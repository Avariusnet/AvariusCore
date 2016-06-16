#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"


enum Summons
{
	Orrig = 800010
};



class challenge : public CreatureScript
{
public: challenge() : CreatureScript("challenge"){ }

		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			pPlayer->ADD_GOSSIP_ITEM(7, "Wie laeuft das hier ab?", GOSSIP_SENDER_MAIN, 0);
			pPlayer->ADD_GOSSIP_ITEM(7, "Wir fordern Orrig heraus!", GOSSIP_SENDER_MAIN, 1);
			pPlayer->ADD_GOSSIP_ITEM(7, "Reset!", GOSSIP_SENDER_MAIN, 2);
			pPlayer->ADD_GOSSIP_ITEM(7, "", GOSSIP_SENDER_MAIN, 3);
			
			if (pPlayer->IsGameMaster()){
				pPlayer->ADD_GOSSIP_ITEM(7, "", GOSSIP_SENDER_MAIN, 4);
			}

			pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
			return true;


		}

		bool OnGossipSelect(Player * /*pPlayer*/, Creature * /*pCreature*/, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
                    return true;
            }
			return true;
		}
};



void AddSC_challenge()
{
	new challenge();
}

