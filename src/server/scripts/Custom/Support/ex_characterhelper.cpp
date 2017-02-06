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

	bool OnGossipSelectCode(Player * player, Creature* /*creature*/, uint32 /*sender*/, uint32 action, const char* code){

		switch (action){


		case 0:
		{
			std::string codes = code;

			PreparedStatement* charselbyname = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CHARACTER_BYNAME);
			charselbyname->setString(0, codes);
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

			std::string codes = code;
			PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_ID_BY_NAME);
			stmt->setString(0, codes);
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

			if (charactersum <= 9 && player->HasEnoughMoney(5000*GOLD)){
				PreparedStatement* updateacc = CharacterDatabase.GetPreparedStatement(CHAR_UPD_ACCOUNT_ID);
				updateacc->setInt32(0, accid);
				updateacc->setInt32(1, player->GetGUID());
				CharacterDatabase.Execute(updateacc);
				player->ModifyMoney(-5000 * GOLD);
				player->GetSession()->SendNotification("Der Accounttausch wurde vollzogen");
				ChatHandler(player->GetSession()).PSendSysMessage("Der Accounttausch wurde vollzogen.",
					player->GetName());

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
		}


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