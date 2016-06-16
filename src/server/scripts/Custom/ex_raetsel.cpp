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
		player->ADD_GOSSIP_ITEM(7, "Was tust du hier?", GOSSIP_SENDER_MAIN, 1);
		return true;
	}

	bool OnGossipSelect(Player * pPlayer, Creature * /*creature*/, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch (uiAction)
		{


		case 1: {

			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Hier kann man die lukrativen Raetselquestreihen abschliessen. Werden dir keine Quests angezeigt, hast du nicht die erforderlichen Vorquests abgeschlossen. Gleich nebenmir steht mein Assistent. Bei diesem koennt ihr die Antworten eingeben, so Ihr diese denn wisst. Ihr muesst nicht die Frage angeben, gebt ihm einfach nur die Antwort. Er wird wissen von was Ihr sprecht.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;


		case 0:
		{
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