#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include "Bag.h"
#include "Common.h"
#include "Config.h"
#include "DatabaseEnv.h"
#include "DBCStructure.h"
#include "Define.h"
#include "Field.h"
#include "GameEventMgr.h"
#include "Item.h"
#include "Language.h"
#include "Log.h"
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
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>

#define NOCHARACTERFOUND "No Character in DB!"
#define NOACCOUNTFOUND "No Account in DB!"
#define NOTENOUGHMONEY "Not enough Money!"
#define TOOMANYCHARACTER "You have already 10 Characters"


class automatic : public CreatureScript
{
public:
	automatic() : CreatureScript("automatic") { }


	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (sConfigMgr->GetBoolDefault("Characterhelper.NPC", true)) {
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Does my Character exist?", GOSSIP_SENDER_MAIN, 0, "Your Charactername: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Transfer my Character to another Account! [Unremovable / 5k Gold]", GOSSIP_SENDER_MAIN, 2, "Targetaccount Name: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Give me another First Character! [Unremovable]", GOSSIP_SENDER_MAIN, 3, "Are you sure? Please enter your Charactername: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Thx! Bring me back!", GOSSIP_SENDER_MAIN, 1, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Help me!", GOSSIP_SENDER_MAIN, 4, "", 0, false);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}

		else {
			creature->SetPhaseMask(2, true);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}
	
	}

	bool OnGossipSelectCode(Player * player, Creature* creature, uint32 /*sender*/, uint32 action, const char* code){

		switch (action){


		case 0:
		{
			std::string charactername = code;
			CustomCharacterSystem * CharacterSystem = 0;
			CustomPlayerLog * PlayerLog = 0;
			PreparedStatement* charselbyname = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CHARACTER_BYNAME);
			charselbyname->setString(0, charactername);
			PreparedQueryResult result = CharacterDatabase.Query(charselbyname);

			if (!result){
				player->GetSession()->SendNotification(NOCHARACTERFOUND);
				return true;
			}

			if (result){

				
				Field* feld = result->Fetch();
				uint32 guid = feld[0].GetInt32();
				uint32 account = feld[1].GetInt32();
				std::string name = feld[2].GetCString();
				//uint32 level = feld[3].GetInt32();
				uint32 totaltime = feld[4].GetInt32();
				
				PreparedStatement* getaccountnamebyid = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_BYID);
				getaccountnamebyid->setInt32(0, account);
				PreparedQueryResult ergebnis = LoginDatabase.Query(getaccountnamebyid);

				if (!result){
					player->GetSession()->SendNotification("Error");
					return true;
				}

				
				Field* ergfeld = ergebnis->Fetch();
				std::string accname = ergfeld[0].GetCString();
				uint32 spielzeith = totaltime / 60 / 60;
				uint32 spielzeit = totaltime / 60 / 60 / 24;
				std::string accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());

				std::ostringstream tt;
				tt << "Search for Character " << charactername;
				std::string reason = tt.str().c_str();
				PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID().GetCounter(), accountname, player->GetSession()->GetAccountId(), reason);
				std::ostringstream pp;
				pp << "Folgende Daten wurden gefunden \nGuid: " << guid << "\nAccountname: " << accname << "\nSpielzeit in Stunden: " << spielzeith << "\nSpielzeit in Tagen: " << spielzeit;
					ChatHandler(player->GetSession()).PSendSysMessage(pp.str().c_str(),
					player->GetName());
					return true;
			}
			return true;

		}break;


		case 2:
		{
			CustomPlayerLog * PlayerLog = 0;
			CustomCharacterSystem * CharacterSystem = 0;
			CustomGMLogic * GMLogic = 0;
			//CustomCharacterSystem * CharacterSystem = 0;
			std::string accountname = code;
			PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_ID_BY_NAME);
			stmt->setString(0, accountname);
			PreparedQueryResult result = LoginDatabase.Query(stmt);

			if (!result){
				player->GetSession()->SendNotification(NOACCOUNTFOUND);
				return true;
			}


			Field* feld = result->Fetch();
			uint32 accid = feld[0].GetInt32();


			PreparedStatement* charsum = CharacterDatabase.GetPreparedStatement(CHAR_SEL_SUM_CHARS);
			charsum->setInt32(0, accid);
			PreparedQueryResult ergebnis = CharacterDatabase.Query(charsum);

			if (!ergebnis){
				player->GetSession()->SendNotification("Error beim Counten der Charaktere!");
				return true;
			}

			Field* felder = ergebnis->Fetch();
			uint32 charactersum = felder[0].GetInt32();
			
			if (player->GetSession()->GetSecurity() > 0) {
				PreparedQueryResult result = GMLogic->selectGMPlayerCount(player->GetSession()->GetAccountId());
				if (result == NULL) {
					GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(),player->GetSession()->GetPlayer(),"Try to transfer Character to a Lower or Higher Sec Account!");
					ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("Warning: GM should be a supporter not a cheater!",
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("This incident has been logged in DB.",
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("This is your first Incident. Beware!",
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
						player->GetName());
					return true;
				}

				Field* fields = result->Fetch();
				//int32 id = fields[0].GetInt32();
				//int32 accountid = fields[1].GetInt32();
				int32 counter = fields[2].GetInt32();

				int newcounter = 0;
				newcounter = counter + 1;

				GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer(), "Try to transfer Character to a Lower or Higher Sec Account!");
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("Warning: GM should be a supporter not a cheater!",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("This incident has been logged in DB.",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("This is your %u Incident. Beware!", newcounter,
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				return true;
			}

			if (charactersum <= 9 && player->HasEnoughMoney(5000*GOLD)){
				PreparedStatement* updateacc = CharacterDatabase.GetPreparedStatement(CHAR_UPD_ACCOUNT_ID);
				updateacc->setInt32(0, accid);
				updateacc->setInt32(1, player->GetGUID());
				CharacterDatabase.Execute(updateacc);
				player->ModifyMoney(-5000 * GOLD);
				player->GetSession()->SendNotification("Der Accounttausch wurde vollzogen");
				ChatHandler(player->GetSession()).PSendSysMessage("Der Accounttausch wurde vollzogen.",
					player->GetName());
				std::string accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
				std::ostringstream tt;
				tt << "Transfer character to Account " << accountname;
				std::string reason = tt.str().c_str();
				PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID().GetCounter(), accountname, player->GetSession()->GetAccountId(), reason);
				return true;
			}

			if (!player->HasEnoughMoney(5000 * GOLD)){
				player->GetSession()->SendNotification(NOTENOUGHMONEY);
			}

			if (charactersum == 10){
				player->GetSession()->SendNotification(TOOMANYCHARACTER);
				return true;
			}
			return true;
		}break;


		//Request new Firstchar!
		case 3: 
		{
			CustomPlayerLog * PlayerLog = 0;
			CustomCharacterSystem * CharacterSystem = 0;
			std::string codes = code;

			if (codes != player->GetSession()->GetPlayerName()) {
				creature->Say("Try again please! You spelled something wrong!", LANG_UNIVERSAL, nullptr);
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("Please try it again. You spelled your Charactername wrong!",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				return true;
			}

			bool hasPlayeralreadyAFirstCharacter = CharacterSystem->hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");
			if (!hasPlayeralreadyAFirstCharacter) {
				creature->Say("There is no First Character on your Account! So do not try this again please!", LANG_UNIVERSAL, nullptr);
				std::string accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
				PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID().GetCounter(), accountname, player->GetSession()->GetAccountId(), "Request declined!");
				return true;
			}

			bool hasPlayerMoreThanTwoFirstCharacters = true;
			hasPlayerMoreThanTwoFirstCharacters = CharacterSystem->countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
			if (hasPlayerMoreThanTwoFirstCharacters) {
				creature->Say("You have already a choice!", LANG_UNIVERSAL, nullptr);

				return true;
			}

			std::string accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());

			PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID().GetCounter(), accountname, player->GetSession()->GetAccountId(), "Request new FirstChar!");
			std::string generatedCharacterName = CharacterSystem->generateNewCharacterName();
			std::string prefix = "first_";
			std::string newCharacterName = prefix + generatedCharacterName;
			CharacterSystem->deleteFirstCharacterPlayerLog(player->GetSession()->GetAccountId());
			CharacterSystem->updateCharacterToZeroAccount(newCharacterName,player->GetGUID());
			ChatHandler(player->GetSession()).PSendSysMessage("Debug: Name: %s",newCharacterName,
				player->GetName());
			player->GetSession()->LogoutPlayer(false);
		

		}break;


		return true;

		}

		return true;
	}


	bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction){

		switch (uiAction)
		{
		
		case 1:
		{
			player->Recall();
			return true;
		}break;

		
		case 4:{

			player->PlayerTalkClass->ClearMenus();
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Was ist das hier?", GOSSIP_SENDER_MAIN, 5, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Wie geht der Charaktertransfer", GOSSIP_SENDER_MAIN, 6, "", 0, false);
			player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
			return true;
			
		}break;

		case 5:
		{
			ChatHandler(player->GetSession()).PSendSysMessage("Ich bin der erweiterte Supportnpc. Ich wurde direkt vom Supportteam losgeschickt um Euch in allen Belangen helfen zu koennen.",
				player->GetName());
			return true;
		}break;

		case 6:
		{
			ChatHandler(player->GetSession()).PSendSysMessage("Ihr braucht 5.000 Gold. Ihr muesst dann den Accountnamen eingeben, zu welchem der Charakter transferiert werden soll. Einmal bestaetigt kann die Uebertragung nicht mehr abgebrochen werden. Nachdem ihr ausgeloggt habt, ist der Charakter transferiert!",
				player->GetName());
			return true;
		}break;
		
			return true;
		}
		return true;
	}

};

void AddSC_automaticsupport()
{
	new automatic();
}