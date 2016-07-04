#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Common.h"
#include "Player.h"
#include "WorldSession.h"
#include "Language.h"
#include "Log.h"
#include "SpellAuras.h"
#include "World.h"
#include "Transport.h"
#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"
#include "CreatureGroups.h"
#include "Language.h"
#include "TargetedMovementGenerator.h"                      
#include "CreatureAI.h"
#include "Player.h"
#include "Pet.h"

class ex_commands : public CommandScript
{
public:
	ex_commands() : CommandScript("ex_commands") { }

	std::vector<ChatCommand> GetCommands() const
	{
		static std::vector<ChatCommand> botCommandTable =
		{
			{ "add", SEC_ADMINISTRATOR , false, &HandleBotAddCommand, "" },
			{ "buff", SEC_ADMINISTRATOR, false, &HandleBotBuffCommand, "" },	
			{ "respawn", SEC_ADMINISTRATOR, false, &HandleBotRespawnCommand, "" },

		};


		static std::vector<ChatCommand> commandTable =
		{
			{ "bot", SEC_ADMINISTRATOR , false, NULL, "", botCommandTable },
		};

		return commandTable;
	}

	
	//Allows members of your team, with sec > 2 to set their chars to Testing mode.
	static bool HandleBotAddCommand(ChatHandler* handler, const char* /*args*/)
	{


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

		if (creatureTarget->GetCreatureTemplate()->Entry != 800059){
			handler->PSendSysMessage("Du darfst nur den Minion zaehmen. Alles andere waere doch Betrug :)");
			return true;
		}

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
		pet->SetArmor(210);
		pet->SetBonusDamage(20000);
		pet->SetCanFly(true);
		pet->setActive(true);
		pet->SetCreateHealth(1500000);
		pet->SetCreateStat(STAT_STRENGTH, 10000);
		// add to world
		pet->GetMap()->AddToMap(pet->ToCreature());

		// visual effect for levelup
		pet->SetUInt32Value(UNIT_FIELD_LEVEL, level);
		
			
		// caster have pet now
		player->SetMinion(pet, true);

		pet->SavePetToDB(PET_SAVE_AS_CURRENT);
		player->PetSpellInitialize();

		return true;

	};


	static bool HandleBotRespawnCommand(ChatHandler* handler, const char* /*args*/)
	{
		//Respawn your Pet. Only useable if Pet is dead.
		Player* player = handler->GetSession()->GetPlayer();
		player->CastSpell(player->GetPet(), 982, true, NULL, NULL, player->GetGUID());
		return true;
	}
	
	
	
	static bool HandleBotBuffCommand(ChatHandler* /*handler*/, const char* /*args*/)
	{
		Player* player = player->GetSession()->GetPlayer();
		Pet* pet = player->GetPet();
		pet->SetLevel(250);
		//Modify Stats of your Pet
		pet->SetCreateHealth(1500000);
		pet->SetArmor(2000);
		pet->SetBonusDamage(10000000);
		return true;
		
	}

		
};

void AddSC_ex_commands()
{
	new ex_commands();
}
