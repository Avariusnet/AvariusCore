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
#include "Custom\Logic\GMLogic.h"
#include "Custom\Logic\CustomCharacterSystem.h"
#include "Custom\Logic\ReportSystem.h"
#include "Custom\Logic\CustomWorldSystem.h"


#define REPORT_QUEST_SUCESS "Quest erfolgreich reported"
#define REPORT_QUEST_SUCESS_AND_COMPLETE "Quest reported und completed"
#define REPORT_QUEST_ERROR  "Du hast die Quest schon reported"
#define CHECK_QUEST_ERROR "Quest wurde nicht gefunden"
#define REPORT_ACTIVATE "Quest sucessfully activated"
#define REPORT_DEACTIVATE "Quest sucessfully deactivate"

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
			ReportSystem * reportSystem = 0;
			CustomCharacterSystem* CharacterSystem = 0;
			CustomWorldSystem* WorldSystem = 0;
			Player* player = handler->GetSession()->GetPlayer();

			if (args == "") {
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname]!");
				return true;
			}

			
			std::string eingabe = std::string((char*)args);

			char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
			if (!id) {
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname]!");
				return true;
			}
				
			int questid = atoul(id);

			if (player->GetSession()->GetSecurity() == 3) {
				handler->PSendSysMessage("QuestID : %u", questid);
			}

			//check if Playeraccount already reported Quest. If yes return true 
			bool playerhasreported = reportSystem->checkIfPlayerHasAlreadyReportedQuest(player->GetSession()->GetAccountId(), questid);

			if (player->GetSession()->GetSecurity() == 3) {
				handler->PSendSysMessage("PlayerHasReported: %s", playerhasreported);
			}

			if (playerhasreported) {
				handler->PSendSysMessage(REPORT_QUEST_ERROR);
				return true;
			}

			//check if quest is already reported or not.
			bool questisalreadyreported = reportSystem->checkIfQuestIsAlreadyReported(questid);

			if (questisalreadyreported) {
			
				if (player->GetSession()->GetSecurity() == 3) {
					handler->PSendSysMessage("QuestisalreadyReported : %s", questisalreadyreported);
				}

				PreparedQueryResult ergebnis = reportSystem->getReportedQuestDetails(questid);

				Field* report_quest = ergebnis->Fetch();
				uint32 questreportid = report_quest[0].GetInt32();
				uint32 anzahl = report_quest[1].GetInt32();
				uint32 aktiv = report_quest[2].GetInt32();

				//if quantity == 5 , set quest to autocomplete
				if (anzahl == 5) {
					if (player->GetGuildId() != NULL) {
						reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), player->GetGuildName(), player->GetGUID(), player->GetSession()->GetAccountId(), questid);
						reportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
						reportSystem->setQuestCompleteActive(1, questid);
						return true;
					}

					reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null" , player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					reportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
					reportSystem->setQuestCompleteActive(1, questid);
					return true;
					
				}

				//if quest active, complete quest
				if (aktiv == 1) {
					reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					reportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
					completeQuest(questreportid, handler, player);
					return true;
				}

				//Quest acitve != 0 and quantity < 5
				reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
				reportSystem->UpdateQuantityQuestReportInDB(anzahl + 1, questid);
				handler->PSendSysMessage(REPORT_QUEST_SUCESS);
				return true;

			}



			else {
				std::string questname = WorldSystem->getQuestNamebyID(questid);
				reportSystem->addNewQuestReportInDB(questname,questid,1,0);
				if (player->GetGuildId() != NULL) {
					reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), player->GetGuildName(), player->GetGUID(), player->GetSession()->GetAccountId(), questid);
					handler->PSendSysMessage(REPORT_QUEST_SUCESS);
					return true;
				}

				reportSystem->addNewPlayerReportInDB(player->GetSession()->GetPlayerName(), "null", player->GetGUID(), player->GetSession()->GetAccountId(), questid);
				handler->PSendSysMessage(REPORT_QUEST_SUCESS);
				return true;
			}

			

			return true;

		}

		return true;


	/*	if (sConfigMgr->GetBoolDefault("Quest.Report", true)) {
			Player* player = handler->GetSession()->GetPlayer();



			std::string eingabe = std::string((char*)args);

			if (eingabe == "")
			{
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report quest [Shift-click on Questname]!");
				return true;
			}

			if (!*args)
				return false;

			uint32 questId = 0;

			if (args[0] == '[')                                        // [name] manual form
			{
				char const* questNameStr = strtok((char*)args, "]");

				if (questNameStr && questNameStr[0])
				{
					std::string questName = questNameStr + 1;
					WorldDatabase.EscapeString(questName);

					PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
					stmt->setString(0, questName);
					PreparedQueryResult result = WorldDatabase.Query(stmt);

					if (!result) {
						player->GetSession()->SendNotification(CHECK_QUEST_ERROR);
						return true;
					}




					Field* questnr = result->Fetch();
					uint32 questid = questnr[0].GetInt32();

					//check if player reported quest already. if true -> return false. if false -> insert in db and report quest.	
					PreparedStatement * selreportquestplayer = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYER_REPORT_QUEST);
					selreportquestplayer->setInt32(0, player->GetGUID());
					selreportquestplayer->setInt32(1, questid);
					PreparedQueryResult existplayer = CharacterDatabase.Query(selreportquestplayer);

					if (!existplayer) {


						//Insert player in reported_quest_player db

						if (player->GetGuildId() != NULL) {
							PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
							insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
							insertnewplayer->setString(1, player->GetGuildName());
							insertnewplayer->setInt32(2, player->GetGUID());
							insertnewplayer->setInt32(3, questid);
							CharacterDatabase.Execute(insertnewplayer);
						}


						PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
						insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
						insertnewplayer->setString(1, "none");
						insertnewplayer->setInt32(2, player->GetGUID());
						insertnewplayer->setInt32(3, questid);
						CharacterDatabase.Execute(insertnewplayer);


						//CHECK IF QUEST WITH ID IS IN DB
						PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
						selreportquest->setInt32(0, questid);
						PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

						//NO Quest with Id in DB
						if (!ergebnis) {

							PreparedStatement* insertnewquest = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
							insertnewquest->setString(0, questName);
							insertnewquest->setInt32(1, questid);
							insertnewquest->setInt32(2, 1);
							insertnewquest->setInt32(3, 0);
							CharacterDatabase.Execute(insertnewquest);
							player->GetSession()->SendNotification(REPORT_QUEST_SUCESS);
							return true;
						}

						//FETCH DB DATA



						Field* report_quest = ergebnis->Fetch();
						uint32 questreportid = report_quest[0].GetInt32();
						uint32 anzahl = report_quest[1].GetInt32();
						uint32 aktiv = report_quest[2].GetInt32();


						//Update anzahl, und aktiv auf 1 setzen.
						if (anzahl == 5) {
							PreparedStatement * updatequestaktiv = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_ACTIVE);
							updatequestaktiv->setInt32(0, anzahl + 1);
							updatequestaktiv->setInt32(1, 1);
							updatequestaktiv->setInt32(2, questreportid);
							CharacterDatabase.Execute(updatequestaktiv);
							completeQuest(questreportid, handler, player);
							player->GetSession()->SendNotification(REPORT_QUEST_SUCESS_AND_COMPLETE);
							return true;
						}

						//aktiv == 1, quest abschließen und counter um 1 erhöhen.
						if (aktiv == 1) {
							PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
							updatequest->setInt32(0, anzahl + 1);
							updatequest->setInt32(1, questreportid);
							CharacterDatabase.Execute(updatequest);
							completeQuest(questreportid, handler, player);
							player->GetSession()->SendNotification(REPORT_QUEST_SUCESS_AND_COMPLETE);
							return true;
						}


						//weder counter == 5 noch aktiv == 1
						PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
						updatequest->setInt32(0, anzahl + 1);
						updatequest->setInt32(1, questreportid);
						CharacterDatabase.Execute(updatequest);
						player->GetSession()->SendNotification(REPORT_QUEST_SUCESS);


						return true;

					}

					return true;
				}

				//Player already report quest
				player->GetSession()->SendNotification(REPORT_QUEST_ERROR);
				return true;
			}


			else                                                    // item_id or [name] Shift-click form |color|Hitem:item_id:0:0:0|h[name]|h|r
			{
				char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
				if (!id)
					return false;
				questId = atoul(id);
				int32 questid = questId;
				PreparedStatement* selquestbyid = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTNAME_BY_ID);
				selquestbyid->setInt32(0, questId);
				PreparedQueryResult resultes = WorldDatabase.Query(selquestbyid);

				if (!resultes) {
					player->GetSession()->SendNotification(CHECK_QUEST_ERROR);
					return true;
				}

				Field* questbyname = resultes->Fetch();
				std::string questname = questbyname[0].GetCString();


				PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
				selreportquest->setInt32(0, questid);
				PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);


				//check if player reported quest already. if true -> return false. if false -> insert in db and report quest.	
				PreparedStatement * selreportquestplayer = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYER_REPORT_QUEST);
				selreportquestplayer->setInt32(0, player->GetGUID());
				selreportquestplayer->setInt32(1, questid);
				PreparedQueryResult existplayer = CharacterDatabase.Query(selreportquestplayer);

				if (!existplayer) {


					//Insert player in reported_quest_player db
					//Insert into reported_quest_player (playername,guildname,guid, reported_quest_id) Values (?,?,?,?)
					if (player->GetGuildId() != NULL) {
						PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
						insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
						insertnewplayer->setString(1, player->GetGuildName());
						insertnewplayer->setInt32(2, player->GetGUID());
						insertnewplayer->setInt32(3, questid);
						CharacterDatabase.Execute(insertnewplayer);
					}


					PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
					insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
					insertnewplayer->setString(1, "none");
					insertnewplayer->setInt32(2, player->GetGUID());
					insertnewplayer->setInt32(3, questid);
					CharacterDatabase.Execute(insertnewplayer);



					//NO Quest with Id in DB
					if (!ergebnis) {

						PreparedStatement* insertnewquest = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
						insertnewquest->setString(0, questname);
						insertnewquest->setInt32(1, questid);
						insertnewquest->setInt32(2, 1);
						insertnewquest->setInt32(3, 0);
						CharacterDatabase.Execute(insertnewquest);
						player->GetSession()->SendNotification(REPORT_QUEST_SUCESS);
						return true;
					}

					//FETCH DB DATA
					Field* report_quest = ergebnis->Fetch();
					uint32 questreportid = report_quest[0].GetInt32();
					uint32 anzahl = report_quest[1].GetInt32();
					uint32 aktiv = report_quest[2].GetInt32();


					//Update anzahl, und aktiv auf 1 setzen.
					if (anzahl == 5) {
						PreparedStatement * updatequestaktiv = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_ACTIVE);
						updatequestaktiv->setInt32(0, anzahl + 1);
						updatequestaktiv->setInt32(1, 1);
						updatequestaktiv->setInt32(2, questreportid);
						CharacterDatabase.Execute(updatequestaktiv);
						completeQuest(questreportid, handler, player);
						player->GetSession()->SendNotification(REPORT_QUEST_SUCESS_AND_COMPLETE);

						return true;
					}

					//aktiv == 1, quest abschließen und counter um 1 erhöhen.
					if (aktiv == 1) {
						PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
						updatequest->setInt32(0, anzahl + 1);
						updatequest->setInt32(1, questreportid);
						CharacterDatabase.Execute(updatequest);
						completeQuest(questreportid, handler, player);
						player->GetSession()->SendNotification(REPORT_QUEST_SUCESS_AND_COMPLETE);

						return true;
					}


					//weder counter == 5 noch aktiv == 1
					PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
					updatequest->setInt32(0, anzahl + 1);
					updatequest->setInt32(1, questreportid);
					CharacterDatabase.Execute(updatequest);
					player->GetSession()->SendNotification(REPORT_QUEST_SUCESS);


					return true;
				}

				player->GetSession()->SendNotification(REPORT_QUEST_ERROR);
				return true;

			}

			return true;
		}


		else {
			return true;
		}
		*/

	};

	static bool HandleDeactivateCommand(ChatHandler* handler, const char* args) {
		if (sConfigMgr->GetBoolDefault("Quest.Report", true)) {
			Player* player = handler->GetSession()->GetPlayer();
			GMLogic* gmlogic;
			CustomCharacterSystem * customcharactersystem;

			std::string eingabe = std::string((char*)args);

			if (eingabe == "")
			{
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report deactivate [Shift-click on Questname]!");
				return true;
			}

			if (!*args)
				return false;

			uint32 questId = 0;

			if (args[0] == '[')                                        // [name] manual form
			{
				char const* questNameStr = strtok((char*)args, "]");


				if (questNameStr && questNameStr[0])
				{
					std::string questName = questNameStr + 1;
					WorldDatabase.EscapeString(questName);

					PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
					stmt->setString(0, questName);
					PreparedQueryResult result = WorldDatabase.Query(stmt);

					if (!result) {
						player->GetSession()->SendNotification(CHECK_QUEST_ERROR);
						return true;
					}




					Field* questnr = result->Fetch();
					uint32 questid = questnr[0].GetInt32();

					//TODO Check if Quest is reported!

					PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
					selreportquest->setInt32(0, questid);
					PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

					if (!ergebnis) {
						player->GetSession()->SendNotification("No one reported this Quest!");
						return true;
					}

					else {
						int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
						std::string accountname = customcharactersystem->getAccountName(accountid);
						gmlogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report deactivate");

						/*PreparedStatement * insertgmaction = CharacterDatabase.GetPreparedStatement(CHAR_INS_GM_ACTION);
						insertgmaction->setString(0, player->GetSession()->GetPlayerName());
						insertgmaction->setInt32(1, player->GetGUID());
						insertgmaction->setString(2, accountname);
						insertgmaction->setInt32(3, player->GetSession()->GetAccountId());
						insertgmaction->setString(4, "Activate Quest");
						CharacterDatabase.Execute(insertgmaction);*/

						// Update collum aktiv to 0!
						PreparedStatement * updatequestactivate = CharacterDatabase.GetPreparedStatement(CHAR_UDP_REPORT_QUEST_ACTIVATE);
						updatequestactivate->setInt32(0, 0);
						updatequestactivate->setInt32(1, questid);
						CharacterDatabase.Execute(updatequestactivate);
						player->GetSession()->SendNotification(REPORT_DEACTIVATE);
						return true;

					}

				}

				else {
					player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report deactivate [Questname]!");
					return true;
				}
			}

			else                                                    // item_id or [name] Shift-click form |color|Hitem:item_id:0:0:0|h[name]|h|r
			{
				char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
				if (!id)
					return false;
				questId = atoul(id);
				int32 questid = questId;

				PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
				selreportquest->setInt32(0, questid);
				PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

				if (!ergebnis) {
					player->GetSession()->SendNotification("No one reported this Quest!");
					return true;
				}

				else {
					int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
					std::string accountname = customcharactersystem->getAccountName(accountid);

					/*PreparedStatement * insertgmaction = CharacterDatabase.GetPreparedStatement(CHAR_INS_GM_ACTION);
					insertgmaction->setString(0, player->GetSession()->GetPlayerName());
					insertgmaction->setInt32(1, player->GetGUID());
					insertgmaction->setString(2, accountname);
					insertgmaction->setInt32(3, player->GetSession()->GetAccountId());
					insertgmaction->setString(4, "Activate Quest");
					CharacterDatabase.Execute(insertgmaction);*/

					gmlogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report deactivate");

					// Update collum aktiv to 0!
					PreparedStatement * updatequestactivate = CharacterDatabase.GetPreparedStatement(CHAR_UDP_REPORT_QUEST_ACTIVATE);
					updatequestactivate->setInt32(0, 0);
					updatequestactivate->setInt32(1, questid);
					CharacterDatabase.Execute(updatequestactivate);
					player->GetSession()->SendNotification(REPORT_DEACTIVATE);
					return true;

				}
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
			Player* player = handler->GetSession()->GetPlayer();
			GMLogic* gmlogic;
			CustomCharacterSystem * customcharactersystem;

			std::string eingabe = std::string((char*)args);

			if (eingabe == "")
			{
				player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report activate [Shift-click on Questname]!");
				return true;
			}

			if (!*args)
				return false;

			uint32 questId = 0;

			if (args[0] == '[')                                        // [name] manual form
			{
				char const* questNameStr = strtok((char*)args, "]");


				if (questNameStr && questNameStr[0])
				{
					std::string questName = questNameStr + 1;
					WorldDatabase.EscapeString(questName);

					PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
					stmt->setString(0, questName);
					PreparedQueryResult result = WorldDatabase.Query(stmt);

					if (!result) {
						player->GetSession()->SendNotification(CHECK_QUEST_ERROR);
						return true;
					}

					Field* questnr = result->Fetch();
					uint32 questid = questnr[0].GetInt32();


					PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
					selreportquest->setInt32(0, questid);
					PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

					if (!ergebnis) {
						player->GetSession()->SendNotification("No one reported this Quest!");
						return true;
					}

					else {

						int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
						std::string accountname = customcharactersystem->getAccountName(accountid);

						gmlogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report activate");

						// Update collum aktiv to 0!
						PreparedStatement * updatequestactivate = CharacterDatabase.GetPreparedStatement(CHAR_UDP_REPORT_QUEST_ACTIVATE);
						updatequestactivate->setInt32(0, 1);
						updatequestactivate->setInt32(1, questid);
						CharacterDatabase.Execute(updatequestactivate);
						player->GetSession()->SendNotification(REPORT_ACTIVATE);
						return true;

					}

				}

				else {
					player->GetSession()->SendNotification("Without entering a valid Quest, the command cannot be executed! Syntax: .report activate [Questname]!");
					return true;
				}
			}

			else                                                    // item_id or [name] Shift-click form |color|Hitem:item_id:0:0:0|h[name]|h|r
			{
				char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
				if (!id)
					return false;
				questId = atoul(id);
				int32 questid = questId;

				PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
				selreportquest->setInt32(0, questid);
				PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

				if (!ergebnis) {
					player->GetSession()->SendNotification("No one reported this Quest!");
					return true;
				}

				else {

					int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
					std::string accountname = customcharactersystem->getAccountName(accountid);

					gmlogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Report activate");

					// Update collum aktiv to 0!
					PreparedStatement * updatequestactivate = CharacterDatabase.GetPreparedStatement(CHAR_UDP_REPORT_QUEST_ACTIVATE);
					updatequestactivate->setInt32(0, 1);
					updatequestactivate->setInt32(1, questid);
					CharacterDatabase.Execute(updatequestactivate);
					player->GetSession()->SendNotification(REPORT_ACTIVATE);
					return true;

				}

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