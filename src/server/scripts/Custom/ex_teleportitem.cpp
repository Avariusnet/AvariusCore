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
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Spell.h"
#include "Player.h"


class port_item : public ItemScript
{
	public:
		port_item() : ItemScript("teleportitem"){}

		bool Onuse(Player * /*player*/, Item * /*item*/, SpellCastTargets const& /*targets*/)
		{
			//player->ADD_GOSSIP_ITEM(7, "Teleportiert mich zu den Sammlern!", GOSSIP_SENDER_MAIN, 0);
			//player->SEND_GOSSIP_MENU(1, item->GetGUID());
			return true;
		}

		void OnGossipSelect(Player* player, Item* /*item*/, uint32 /*sender*/, uint32 uiAction){

			switch (uiAction)
			{

				case 0:
				{
					player->TeleportTo(0, -9773.22f, 2125.16f, 15.49f, 3.47f, 0.0f);
				}break;

				default:
				{
					return;
				}

			}
		}
};


void AddSC_port_item()
{
	new port_item;
}