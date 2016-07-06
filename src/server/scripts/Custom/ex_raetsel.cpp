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


class raetsel : public CreatureScript
{

public:
	raetsel() : CreatureScript("raetsel") { }

	bool OnGossipHello(Player* player, Creature* /*creature*/) {
		player->ADD_GOSSIP_ITEM(7, "Was tust du hier?", GOSSIP_SENDER_MAIN,0);
		player->ADD_GOSSIP_ITEM(7, "Stellt mir eine Frage", GOSSIP_SENDER_MAIN, 1);
		return true;
	}

	bool OnGossipSelect(Player * player, Creature * /*creature*/, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch (uiAction)
		{


		case 0: {

			player->GetGUID();
			ChatHandler(player->GetSession()).PSendSysMessage("Hier kann man die lukrativen Raetselquestreihen abschliessen. Diese geben Euch bei korrekter Beantwortung diverse Belohnungen.",
				player->GetName());
			player->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;


		case 1:
		{
			PreparedStatement* count = CharacterDatabase.GetPreparedStatement(CHAR_SEL_FRAGEN_COUNT);
			PreparedQueryResult ergebnis = CharacterDatabase.Query(count);

			Field *feld = ergebnis->Fetch();
			uint32 durchschnitt = feld[0].GetInt32();

			srand(time(NULL));
			int r = rand() % durchschnitt;
			player->GetSession()->SendNotification(durchschnitt);
			player->GetSession()->SendNotification(r);

			PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_FRAGEN);
			stmt->setInt32(0, r);
			PreparedQueryResult result = CharacterDatabase.Query(stmt);

			Field *field = result->Fetch();
			std::string frage = field[0].GetCString();
			std::string antwort = field[1].GetCString();
			uint32 belohnung = field[2].GetInt32();
			uint32 anzahl = field[3].GetInt32();

			std::ostringstream ss;
			ss << "Deine Frage lautet: " << frage;
			ChatHandler(player->GetSession()).PSendSysMessage(ss.str().c_str(),
				player->GetName());


			return true;
		}break;

		return true;
		}
	};

	
};


void AddSC_raetsel()
{
	new raetsel();
}