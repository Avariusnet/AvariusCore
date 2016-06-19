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
			/*{ "del", SEC_ADMINISTRATOR, false, &HandleBotDelCommand, "" },*/	
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



		/*uint32 id = 800059;

		if (id != 800059){
			return false;
		}

		if (!sObjectMgr->GetCreatureTemplate(id))
			return false;

		Player* chr = handler->GetSession()->GetPlayer();
		float x = chr->GetPositionX();
		float y = chr->GetPositionY();
		float z = chr->GetPositionZ();
		float o = chr->GetOrientation();
		Map* map = chr->GetMap();

		if (Transport* trans = chr->GetTransport())
		{
			ObjectGuid::LowType guid = map->GenerateLowGuid<HighGuid::Unit>();
			CreatureData& data = sObjectMgr->NewOrExistCreatureData(guid);
			data.id = id;
			data.phaseMask = chr->GetPhaseMaskForSpawn();
			data.posX = chr->GetTransOffsetX();
			data.posY = chr->GetTransOffsetY();
			data.posZ = chr->GetTransOffsetZ();
			data.orientation = chr->GetTransOffsetO();

			Creature* creature = trans->CreateNPCPassenger(guid, &data);

			creature->SaveToDB(trans->GetGOInfo()->moTransport.mapID, 1 << map->GetSpawnMode(), chr->GetPhaseMaskForSpawn());

			sObjectMgr->AddCreatureToGrid(guid, &data);
			return true;
		}

		Creature* creature = new Creature();
		if (!creature->Create(map->GenerateLowGuid<HighGuid::Unit>(), map, chr->GetPhaseMaskForSpawn(), id, x, y, z, o))
		{
			delete creature;
			return false;
		}

		creature->SaveToDB(map->GetId(), (1 << map->GetSpawnMode()), chr->GetPhaseMaskForSpawn());

		ObjectGuid::LowType db_guid = creature->GetSpawnId();

		// To call _LoadGoods(); _LoadQuests(); CreateTrainerSpells()
		// current "creature" variable is deleted and created fresh new, otherwise old values might trigger asserts or cause undefined behavior
		creature->CleanupsBeforeDelete();
		delete creature;
		creature = new Creature();
		if (!creature->LoadCreatureFromDB(db_guid, map))
		{
			delete creature;
			return false;
		}

		sObjectMgr->AddCreatureToGrid(db_guid, sObjectMgr->GetCreatureData(db_guid));		
		return true; */
	};


	/*static bool HandleBotDelCommand(ChatHandler* handler, const char* args)
	{
		Creature* unit = nullptr;
		Creature* creature = handler->getSelectedCreature();

		if (!creature)
		{
			handler->PSendSysMessage(LANG_SELECT_CREATURE);
			handler->SetSentErrorMessage(true);
			return false;
		}

		if (creature->GetCreatureTemplate()->Entry != 800059){
			return false;
		}

		

		if (*args)
		{
			// number or [name] Shift-click form |color|Hcreature:creature_guid|h[name]|h|r
			char* cId = handler->extractKeyFromLink((char*)args, "Hcreature");
			if (!cId)
				return false;

			ObjectGuid::LowType lowguid = atoi(cId);
			if (!lowguid)
				return false;

			if (CreatureData const* cr_data = sObjectMgr->GetCreatureData(lowguid))
				unit = handler->GetSession()->GetPlayer()->GetMap()->GetCreature(ObjectGuid(HighGuid::Unit, cr_data->id, lowguid));
		}
		else
			unit = handler->getSelectedCreature();

		if (!unit || unit->IsPet() || unit->IsTotem())
		{
			handler->SendSysMessage(LANG_SELECT_CREATURE);
			handler->SetSentErrorMessage(true);
			return false;
		}

		// Delete the creature
		unit->CombatStop();
		unit->DeleteFromDB();
		unit->AddObjectToRemoveList();

		handler->SendSysMessage(LANG_COMMAND_DELCREATMESSAGE);

		return true;
	};*/

	
	static bool HandleBotRespawnCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player* player = handler->GetSession()->GetPlayer();
		player->CastSpell(player->GetPet(), 982, true, NULL, NULL, player->GetGUID());
		// accept only explicitly selected target (not implicitly self targeting case)
		/*Creature* target = player->GetTarget() ? handler->getSelectedCreature() : nullptr;
		if (target)
		{
			if (target->IsPet())
			{
				
				handler->SendSysMessage(LANG_SELECT_CREATURE);
				handler->SetSentErrorMessage(true);
				return true;
			}

			if (target->isDead())
				target->Respawn();
			return true;
		}

		Trinity::RespawnDo u_do;
		Trinity::WorldObjectWorker<Trinity::RespawnDo> worker(player, u_do);
		player->VisitNearbyGridObject(player->GetGridActivationRange(), worker);
		*/
		return true;

	}

		
};

void AddSC_ex_commands()
{
	new ex_commands();
}