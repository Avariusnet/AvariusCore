//
//  ex_commands.cpp
//  TrinityCore
//
//  Created by Raphael Kirchgäßner on 08/07/16.
//
//

#include <stdio.h>
#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Common.h"
#include "Player.h"
#include "Config.h"
#include "WorldSession.h"
#include "Language.h"
#include "Log.h"
#include "SpellAuras.h"
#include "World.h"
#include "Transport.h"
#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"
#include "CreatureGroups.h"
#include "Language.h"
#include "TargetedMovementGenerator.h"
#include "CreatureAI.h"
#include "Player.h"
#include "Pet.h"
#include "ObjectGuid.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "QueryResult.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"
#include "Transaction.h"
#include "WorldSession.h"
#include <sstream>
#include <string>
#include <stdlib.h>
#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ReputationMgr.h"
#include "ScriptMgr.h"
#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomReportSystem.h>
#include <Custom/Logic/CustomWorldSystem.h>
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomPlayerLog.h>


#define REPORT_QUEST_SUCESS "Quest report sucessfull."
#define REPORT_QUEST_SUCESS_AND_COMPLETE "Quest reported and completed."
#define REPORT_QUEST_ERROR  "You already reported this quest!"
#define CHECK_QUEST_ERROR "Quest was not found in DB!"
#define REPORT_ACTIVATE "Quest sucessfully activated!"
#define REPORT_DEACTIVATE "Quest sucessfully deactivate!"

class ex_reportcommands : public CommandScript
{
public:
	ex_reportcommands() : CommandScript("ex_reportcommands") { }

	std::vector<ChatCommand> GetCommands() const
	{
		static std::vector<ChatCommand> bugTable =
		{
			{ "quest", SEC_ADMINISTRATOR, false, &HandleReportQuestCommand, "" },
			{ "activate", SEC_ADMINISTRATOR, false, &HandleActivateQuestCommand, "" },
			{ "deactivate", SEC_ADMINISTRATOR, false, &HandleDeactivateCommand, "" }

		};


		static std::vector<ChatCommand> commandTable =
		{
			{ "report", SEC_ADMINISTRATOR , false, NULL, "" ,bugTable },

		};

		return commandTable;
	}



	static bool completeQuest(int32 entry, ChatHandler* handler, Player* player) {
		Quest const* quest = sObjectMgr->GetQuestTemplate(entry);

		// If player doesn't have the quest
		if (!quest || player->GetQuestStatus(entry) == QUEST_STATUS_NONE)
		{
			handler->PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
			handler->SetSentErrorMessage(true);
			return false;
		}

		// Add quest items for quests that require items
		for (uint8 x = 0; x < QUEST_ITEM_OBJECTIVES_COUNT; ++x)
		{
			uint32 id = quest->RequiredItemId[x];
			uint32 count = quest->RequiredItemCount[x];
			if (!id || !count)
				continue;

			uint32 curItemCount = player->GetItemCount(id, true);

			ItemPosCountVec dest;
			uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, id, count - curItemCount);
			if (msg == EQUIP_ERR_OK)
			{
				Item* item = player->StoreNewItem(dest, id, true);
				player->SendNewItem(item, count - curItemCount, true, false);
			}
		}

		// All creature/GO slain/cast (not required, but otherwise it will display "Creature slain 0/10")
		for (uint8 i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
		{
			int32 creature = quest->RequiredNpcOrGo[i];
			uint32 creatureCount = quest->RequiredNpcOrGoCount[i];

			if (creature > 0)
			{
				if (CreatureTemplate const* creatureInfo = sObjectMgr->GetCreatureTemplate(creature))
					for (uint16 z = 0; z < creatureCount; ++z)
						player->KilledMonster(creatureInfo, ObjectGuid::Empty);
			}
			else if (creature < 0)
				for (uint16 z = 0; z < creatureCount; ++z)
					player->KillCreditGO(creature);
		}

		// If the quest requires reputation to complete
		if (uint32 repFaction = quest->GetRepObjectiveFaction())
		{
			uint32 repValue = quest->GetRepObjectiveValue();
			uint32 curRep = player->GetReputationMgr().GetReputation(repFaction);
			if (curRep < repValue)
				if (FactionEntry const* factionEntry = sFactionStore.LookupEntry(repFaction))
					player->GetReputationMgr().SetReputation(factionEntry, repValue);
		}

		// If the quest requires a SECOND reputation to complete
		if (uint32 repFaction = quest->GetRepObjectiveFaction2())
		{
			uint32 repValue2 = quest->GetRepObjectiveValue2();
			uint32 curRep = player->GetReputationMgr().GetReputation(repFaction);
			if (curRep < repValue2)
				if (FactionEntry const* factionEntry = sFactionStore.LookupEntry(repFaction))
					player->GetReputationMgr().SetReputation(factionEntry, repValue2);
		}

		// If the quest requires money
		int32 ReqOrRewMoney = quest->GetRewOrReqMoney();
		if (ReqOrRewMoney < 0)
			player->ModifyMoney(-ReqOrRewMoney);

		if (sWorld->getBoolConfig(CONFIG_QUEST_ENABLE_QUEST_TRACKER)) // check if Quest Tracker is enabled
		{
			// prepare Quest Tracker datas
			PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_QUEST_TRACK_GM_COMPLETE);
			stmt->setUInt32(0, quest->GetQuestId());
			stmt->setUInt32(1, player->GetGUID().GetCounter());

			// add to Quest Tracker
			CharacterDatabase.Execute(stmt);
		}

		player->CompleteQuest(entry);
		return true;
	}


	//report function. More than 5 reports makes a quest instant complete.
	static bool HandleReportQuestCommand(ChatHandler* handler, const char* args)
	{

		if (sConfigMgr->GetBoolDefault("Quest.Report", true)) {
			CustomReportSystem * ReportSystem = 0;
			CustomWorldSystem * WorldSystem = 0;
			CustomCharacterSystem * CharacterSystem = 0;
			CustomPlayerLog * PlayerLog = 0;
			Player* player = handler->GetSession()->GetPlayer();

			char* questlogname = strtok((char*)args, ",");
			char* reportmsg = strtok(NULL, "");

			//char* reportmsg = strtok((char*)args, " ");
			if (!reportmsg) {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Questerrormessage, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname] Your Reportmessage.");
				handler->PSendSysMessage("##########################################################");
				return true;
			}

			std::string error_message = std::string((char*)reportmsg);

			//char* questlogname = strtok(NULL, " ");
			if (!questlogname) {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Quest, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname]");
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname] !");
				return true;
			}

			std::string eingabe = std::string((char*)questlogname);
			

			if (eingabe == "") {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Quest, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname]");
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname]!");
				return true;
			}

			char const* id = handler->extractKeyFromLink((char*)questlogname, "Hquest");
			if (!id) {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Quest, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname]");
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname]!");
				return true;
			}
				

			

			int questid = atoul(id);

			if (player->GetSession()->GetSecurity() <= 2) {
				handler->PSendSysMessage("QuestID : %u", questid);
			}

			//check if Playeraccount already reported Quest. If yes return true 
			bool playerhasreported = ReportSystem->checkIfPlayerHasAlreadyReportedQuest(player->GetSession()->GetAccountId(), questid);

			if (player->GetSession()->GetSecurity() <= 2) {
				handler->PSendSysMessage("PlayerHasReported: %s", playerhasreported);
			}

			if (playerhasreported) {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage(REPORT_QUEST_ERROR);
				handler->PSendSysMessage("##########################################################");
				return true;
			}

			//check if quest is already reported or not.
			bool questisalreadyreported = ReportSystem->checkIfQuestIsAlreadyReported(questid);

			if (questisalreadyreported) {
			
				if (player->GetSession()->GetSecurity() <= 2) {
					handler->PSendSysMessage("QuestisalreadyReported : %s", questisalreadyreported);
				}

				PreparedQueryResult ergebnis = ReportSystem->getReportedQuestDetails(questid);

				Field* report_quest = ergebnis->Fetch();
				uint32 questreportid = report_quest[0].GetInt32();
				uint32 anzahl = report_quest[1].GetInt32();
				uint32 aktiv = report_quest[2].GetInt32();

				//if quantity == 5 , set quest to autocomplete
				if (anzahl == 5) {
					bool isQuestForbidden = false;
					isQuestForbidden = ReportSystem->checkIfQuestisForbidden(questid);

					if (player->GetSession()->GetSecurity() >= 2) {
						handler->PSendSysMessage("Debug: Questid: %u", questid);
						handler->PSendSysMessage("Debug: Is Quest Forbidden?: %s", isQuestForbidden);
					}

					if (player->GetGuildId() != 0) {
						//Quest is forbidden and should not be activated!
						if (isQuestForbidden) {
							std::string accountname = "";
							accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
							PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
							ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), player->GetGuildName(), player->GetGUID(), player->GetSession()->GetAccountId(), questid);
							ReportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
							ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(),questid, error_message);
							std::string questname = WorldSystem->getQuestNamebyID(questid);
							handler->PSendSysMessage("##########################################################");
							handler->PSendSysMessage(REPORT_QUEST_SUCESS);
							handler->PSendSysMessage("QuestID: %u", questid);
							handler->PSendSysMessage("Questname: %s", questname);
							handler->PSendSysMessage("Reportmessage: %s", error_message);
							handler->PSendSysMessage("##########################################################");
							return true;
						}

						//Quest is not forbidden and activating is ok!
						std::string accountname = "";
						accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
						PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
						ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), player->GetGuildName(), player->GetGUID(), player->GetSession()->GetAccountId(), questid);
						ReportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
						ReportSystem->setQuestActiveOrInactive(1, questid);
						ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
						std::string questname = WorldSystem->getQuestNamebyID(questid);
						handler->PSendSysMessage("##########################################################");
						handler->PSendSysMessage(REPORT_QUEST_SUCESS);
						handler->PSendSysMessage("QuestID: %u", questid);
						handler->PSendSysMessage("Questname: %s", questname);
						handler->PSendSysMessage("Reportmessage: %s", error_message);
						handler->PSendSysMessage("##########################################################");
						return true;
					}

					//Player has no guild !
					std::string accountname = "";
					accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
					ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null" , player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					ReportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
					ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
					std::string questname = WorldSystem->getQuestNamebyID(questid);
					handler->PSendSysMessage("##########################################################");
					handler->PSendSysMessage(REPORT_QUEST_SUCESS);
					handler->PSendSysMessage("QuestID: %u", questid);
					handler->PSendSysMessage("Questname: %s", questname);
					handler->PSendSysMessage("Reportmessage: %s", error_message);
					handler->PSendSysMessage("##########################################################");

					if (isQuestForbidden) {
						ReportSystem->setQuestActiveOrInactive(0, questid);
						return true;
					}
					ReportSystem->setQuestActiveOrInactive(1, questid);
					return true;
					
				}

				//if quest active, complete quest
				if (aktiv == 1) {
					std::string accountname = "";
					accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
					ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					ReportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
					completeQuest(questreportid, handler, player);
					ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
					std::string questname = WorldSystem->getQuestNamebyID(questid);
					handler->PSendSysMessage("##########################################################");
					handler->PSendSysMessage(REPORT_QUEST_SUCESS);
					handler->PSendSysMessage("QuestID: %u", questid);
					handler->PSendSysMessage("Questname: %s", questname);
					handler->PSendSysMessage("Reportmessage: %s", error_message);
					handler->PSendSysMessage("##########################################################");
					handler->PSendSysMessage(REPORT_QUEST_SUCESS_AND_COMPLETE);
					return true;
				}

				//Quest acitve != 0 and quantity < 5
				std::string accountname = "";
				accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
				PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
				ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
				ReportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
				ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
				std::string questname = WorldSystem->getQuestNamebyID(questid);
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage(REPORT_QUEST_SUCESS);
				handler->PSendSysMessage("QuestID: %u", questid);
				handler->PSendSysMessage("Questname: %s", questname);
				handler->PSendSysMessage("Reportmessage: %s", error_message);
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage(REPORT_QUEST_SUCESS);
				return true;

			}



			else {
				std::string questname = WorldSystem->getQuestNamebyID(questid);
				ReportSystem->addNewQuestReportInDB(questname,questid,1,0);
				if (player->GetGuildId() != 0) {
					std::string accountname = "";
					accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
					ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), player->GetGuildName(), player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
					handler->PSendSysMessage("##########################################################");
					handler->PSendSysMessage(REPORT_QUEST_SUCESS);	
					handler->PSendSysMessage("QuestID: %u", questid);
					handler->PSendSysMessage("Questname: %s", questname);
					handler->PSendSysMessage("Reportmessage: %s", error_message);
					handler->PSendSysMessage("##########################################################");
					player->GetSession()->SendAreaTriggerMessage(REPORT_QUEST_SUCESS);
					return true;
				}

				std::string accountname = "";
				accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
				PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Quest reported");
				ReportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
				ReportSystem->insertErrorMessageForQuest(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), questid, error_message);
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage(REPORT_QUEST_SUCESS);
				handler->PSendSysMessage("QuestID: %u", questid);
				handler->PSendSysMessage("Questname: %s", questname);
				handler->PSendSysMessage("Reportmessage: %s", error_message);
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendAreaTriggerMessage(REPORT_QUEST_SUCESS);
				return true;
			}

			

			return true;

		}

		return true;

	};

	static bool HandleDeactivateCommand(ChatHandler* handler, const char* args) {
		if (sConfigMgr->GetBoolDefault("Quest.Report", true)) {
			CustomReportSystem * ReportSystem = 0;
			Player* player = handler->GetSession()->GetPlayer();
			CustomGMLogic* GMLogic = 0;
			CustomCharacterSystem * CharacterSystem = 0;

			std::string eingabe = std::string((char*)args);

			if (eingabe == "")
			{
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Quest, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname]");
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report deactivate [Shift-click on Questname]!");
				return true;
			}


			if (!*args) {
				return false;
			}



			uint32 questId = 0;

			char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
			if (!id)
				return false;
			questId = atoul(id);
			int32 questid = questId;

			bool isQuestForbidden = true;
			isQuestForbidden = ReportSystem->checkIfQuestisForbidden(questid);
			if (isQuestForbidden) {
				int32 accountid = CharacterSystem->getAccountID(player->GetSession()->GetPlayerName());
				std::string accountname = CharacterSystem->getAccountName(accountid);
				GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer());
				GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Try to deactivate a forbidden Quest!");
				int newcounter = 0;
				newcounter = GMLogic->getGMPlayerCount(accountid);
				 
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Warning: GM should be a supporter not a cheater!");
				handler->PSendSysMessage("This incident has been logged in DB.");
				handler->PSendSysMessage("This is your %u Incident. Beware!", newcounter);
				handler->PSendSysMessage("##########################################################");
				return true;
			}

			PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
			selreportquest->setInt32(0, questid);
			PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

			if (!ergebnis) {
				player->GetSession()->SendNotification("No one reported this Quest!");
				return true;
			}

			else {
				int32 accountid = CharacterSystem->getAccountID(player->GetSession()->GetPlayerName());
				std::string accountname = CharacterSystem->getAccountName(accountid);


				GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report deactivate");

				// Update collum aktiv to 0!
				ReportSystem->setQuestActiveOrInactive(0, questid);
				player->GetSession()->SendNotification(REPORT_DEACTIVATE);
				return true;

			}

				
			return true;
		}


		else {
			return true;
		}
	};

	static bool HandleActivateQuestCommand(ChatHandler* handler, const char* args)
	{

		if (sConfigMgr->GetBoolDefault("Quest.Report", true)) {
			CustomReportSystem * ReportSystem = 0;
			Player* player = handler->GetSession()->GetPlayer();
			CustomGMLogic* GMLogic = 0;
			CustomCharacterSystem * CharacterSystem = 0;

			std::string eingabe = std::string((char*)args);

			if (eingabe == "")
			{
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Without entering a valid Quest, the command cannot be executed!");
				handler->PSendSysMessage("Syntax: .report quest [Shift-click on Questname]");
				handler->PSendSysMessage("##########################################################");
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report activate [Shift-click on Questname]!");
				return true;
			}

			if (!*args) {
				return false;
			}
			uint32 questId = 0;


			// item_id or [name] Shift-click form |color|Hitem:item_id:0:0:0|h[name]|h|r

			char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
			if (!id)
				return false;
			questId = atoul(id);
			int32 questid = questId;

			bool isQuestForbidden = true;
			isQuestForbidden = ReportSystem->checkIfQuestisForbidden(questid);
			if (isQuestForbidden) {
				int32 accountid = CharacterSystem->getAccountID(player->GetSession()->GetPlayerName());
				std::string accountname = CharacterSystem->getAccountName(accountid);
				GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer());
				GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Try to activate a forbidden Quest!");
				int newcounter = 0;
				newcounter = GMLogic->getGMPlayerCount(accountid);

				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Warning: GM should be a supporter not a cheater!");
				handler->PSendSysMessage("This incident has been logged in DB.");
				handler->PSendSysMessage("This is your %u Incident. Beware!", newcounter);
				handler->PSendSysMessage("##########################################################");
				return true;
			}

			PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
			selreportquest->setInt32(0, questid);
			PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

			if (!ergebnis) {
				player->GetSession()->SendNotification("No one reported this Quest!");
				return true;
			}

			else {

				int32 accountid = CharacterSystem->getAccountID(player->GetSession()->GetPlayerName());
				std::string accountname = CharacterSystem->getAccountName(accountid);

				GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report activate");

				// Update collum aktiv to 1!
				ReportSystem->setQuestActiveOrInactive(1, questid);
				player->GetSession()->SendNotification(REPORT_ACTIVATE);
				return true;

			}
		


			return true;
		}


		else {
			return true;
		}
	}



};

void AddSC_ex_reportcommands()
{
	new ex_reportcommands();
}
