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
#include "ItemPrototype.h"
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




class automatic : public CreatureScript
{
public:
	automatic() : CreatureScript("automatic") { }


	bool OnGossipHello(Player* player, Creature* creature)
	{
		player->ADD_GOSSIP_ITEM_EXTENDED(7, "Existiert mein Charakter noch?", GOSSIP_SENDER_MAIN, 0, "Der Name lautet: ", 0, true);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "2ter Eintrag", GOSSIP_SENDER_MAIN, 1);
		player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
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
				player->GetSession()->SendNotification("Es wurde kein Charakter mit dem angegebenen Namen gefunden.");
				return true;
			}

			if (result){

				
				Field* feld = result->Fetch();
				uint32 guid = feld[0].GetInt32();
				uint32 account = feld[1].GetInt32();
				std::string name = feld[2].GetCString();
				uint32 level = feld[3].GetInt32();
				uint32 totaltime = feld[4].GetInt32();
				
				PreparedStatement* getaccountnamebyid = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_BYID);
				getaccountnamebyid->setInt32(0, account);
				PreparedQueryResult ergebnis = LoginDatabase.Query(getaccountnamebyid);

				if (!result){
					player->GetSession()->SendNotification("Error");
					return true;
				}
				player->GetSession()->SendNotification(level);
				Field* ergfeld = ergebnis->Fetch();
				std::string accname = ergfeld[0].GetCString();
				
				uint32 spielzeit = totaltime / 60 / 60 / 24;

				std::ostringstream pp;
				pp << "Folgende Daten wurden gefunden \nGuid: " << guid << "\nAccountname: " << accname << "\nLevel: " << level << "\nSpielzeit in Tagen: " << spielzeit;
					ChatHandler(player->GetSession()).PSendSysMessage(pp.str().c_str(),
					player->GetName());
					return true;
			}


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