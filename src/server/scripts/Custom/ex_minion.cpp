#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"




class minion : public CreatureScript
{
public: minion() : CreatureScript("minion"){ }

		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			pPlayer->ADD_GOSSIP_ITEM(7, "Folgt mir!", GOSSIP_SENDER_MAIN, 0);
			pPlayer->ADD_GOSSIP_ITEM(7, "Wir fordern Orrig heraus!", GOSSIP_SENDER_MAIN, 1);
			pPlayer->ADD_GOSSIP_ITEM(7, "Reset!", GOSSIP_SENDER_MAIN, 2);
			pPlayer->ADD_GOSSIP_ITEM(7, "", GOSSIP_SENDER_MAIN, 3);
			
			if (pPlayer->IsGameMaster()){
				pPlayer->ADD_GOSSIP_ITEM(7, "", GOSSIP_SENDER_MAIN, 4);
			}

			pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
			return true;


		}

		bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{

			case 1:
			{
				if (Creature* creature = player->FindNearestCreature(190001, 25.0f))
				{
					creature->Say(190001, creature);
					creature->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, creature->GetFollowAngle(), MOTION_SLOT_ACTIVE);
				}

				
			}break;

				default:
                    return true;

            }
			return true;
		}
};



void AddSC_minion()
{
	new minion();
}

