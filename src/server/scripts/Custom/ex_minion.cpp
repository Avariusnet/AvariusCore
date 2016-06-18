#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "Language.h"
#include "Player.h"
#include "Pet.h"



class minion : public CreatureScript
{
public: minion() : CreatureScript("minion"){ }

		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			pPlayer->ADD_GOSSIP_ITEM(7, "Werdet zu meinem Haustier", GOSSIP_SENDER_MAIN, 0);
			pPlayer->ADD_GOSSIP_ITEM(7, "Angriff!", GOSSIP_SENDER_MAIN, 1);
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

			case 0:
			{
				
				ChatHandler* handler;
				Creature* creatureTarget = handler->getSelectedCreature();
				if (!creatureTarget || creatureTarget->IsPet())
				{
					handler->PSendSysMessage(LANG_SELECT_CREATURE);
					handler->SetSentErrorMessage(true);
					return false;
				}


				Player* player = handler->GetSession()->GetPlayer();

				if (player->GetPetGUID())
				{
					handler->SendSysMessage(LANG_YOU_ALREADY_HAVE_PET);
					handler->SetSentErrorMessage(true);
					return false;
				}

				CreatureTemplate const* cInfo = creatureTarget->GetCreatureTemplate();

				if (!cInfo->IsTameable(player->CanTameExoticPets()))
				{
					handler->PSendSysMessage(LANG_CREATURE_NON_TAMEABLE, cInfo->Entry);
					handler->SetSentErrorMessage(true);
					return false;
				}

				// Everything looks OK, create new pet
				Pet* pet = player->CreateTamedPetFrom(creatureTarget);
				if (!pet)
				{
					handler->PSendSysMessage(LANG_CREATURE_NON_TAMEABLE, cInfo->Entry);
					handler->SetSentErrorMessage(true);
					return false;
				}

				// place pet before player
				float x, y, z;
				player->GetClosePoint(x, y, z, creatureTarget->GetObjectSize(), CONTACT_DISTANCE);
				pet->Relocate(x, y, z, float(M_PI) - player->GetOrientation());

				// set pet to defensive mode by default (some classes can't control controlled pets in fact).
				pet->SetReactState(REACT_DEFENSIVE);

				// calculate proper level
				uint8 level = (creatureTarget->getLevel() < (player->getLevel() - 5)) ? (player->getLevel() - 5) : creatureTarget->getLevel();

				// prepare visual effect for levelup
				pet->SetUInt32Value(UNIT_FIELD_LEVEL, level - 1);

				// add to world
				pet->GetMap()->AddToMap(pet->ToCreature());

				// visual effect for levelup
				pet->SetUInt32Value(UNIT_FIELD_LEVEL, level);

				// caster have pet now
				player->SetMinion(pet, true);

				pet->SavePetToDB(PET_SAVE_AS_CURRENT);
				player->PetSpellInitialize();

				return true;

			}break;

			case 1:
			{

			}

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

