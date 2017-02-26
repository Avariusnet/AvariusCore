#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include <stdlib.h>
#include "GameEventMgr.h"
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
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomCharacterSystem.h>





class vipvendor : public CreatureScript
{
public: vipvendor() : CreatureScript("vipvendor") { }


		bool OnGossipHello(Player *player, Creature* _creature)
		{
			//test if this is possible in Fucntion
			if (sConfigMgr->GetBoolDefault("Vip.Vendor", true)) {
				player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Help!", GOSSIP_SENDER_MAIN, 2, "", 0, false);
				player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "I want to buy some Tokens!", GOSSIP_SENDER_MAIN, 1 , "Amount of Tokens you want to buy: ", 0, true);
				player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;
			}


			else {
				_creature->SetPhaseMask(2, true);
				player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;
			}
		}


		bool OnGossipSelectCode(Player * player, Creature* /*creature*/, uint32 /*sender*/, uint32 action, const char* code) {

			switch (action) {
				
			case 1:
			{
				CustomCharacterSystem * CharacterSystem = 0;
				CharacterSystem->sellPlayerVIPCurrency(player->GetSession()->GetPlayer(), code);
				return true;
			}break;

			case 2: {

			}break;

			return true;

			}

			return true;
		}

};





void AddSC_vipvendor()
{
	new vipvendor();
}