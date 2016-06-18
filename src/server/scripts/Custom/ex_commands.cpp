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
			{ "del", SEC_PLAYER, false, &HandleBotDelCommand, "" },
			{ "attack", SEC_PLAYER, false, &HandleBotAttackCommand, "" },
			{ "stop", SEC_PLAYER, false, &HandleBotStopAttackCommand, "" },
			{ "follow", SEC_PLAYER, false, &HandleBotFollowCommand, "" },
				

		};


		static std::vector<ChatCommand> commandTable =
		{
			{ "bot", SEC_PLAYER, false, NULL, "", botCommandTable },
		};

		return commandTable;
	}

	
	//Allows members of your team, with sec > 2 to set their chars to Testing mode.
	static bool HandleBotAddCommand(ChatHandler* handler, const char* args)
	{

		if (!*args)
			return false;

		char* charID = handler->extractKeyFromLink((char*)args, "Hcreature_entry");
		if (!charID)
			return false;

		uint32 id = atoi(charID);

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

		//creature->SaveToDB(map->GetId(), (1 << map->GetSpawnMode()), chr->GetPhaseMaskForSpawn());

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

		//sObjectMgr->AddCreatureToGrid(db_guid, sObjectMgr->GetCreatureData(db_guid));		
		return true;
	};


	static bool HandleBotDelCommand(ChatHandler* handler, const char* args)
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
	};


	static bool HandleBotAttackCommand(ChatHandler* handler, const char* args)
	{
		if (!args){
			return false;
		}
		Player* player = player->GetSession()->GetPlayer();
		Creature* target = handler->getSelectedCreature();

		if (!target)
		{
			handler->PSendSysMessage(LANG_SELECT_CREATURE);
			handler->SetSentErrorMessage(true);
			return false;
		}

		if (target->GetCreatureTemplate()->Entry != 800059){
			return true;
		}


		if (target){
			target->setFaction(1);
			target->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, target->GetFollowAngle());
			return true;
		}

		return true;
	};


	static bool HandleBotStopAttackCommand(ChatHandler* handler, const char* args)
	{
		if (!args){
			return false;
		}

		Player* player = player->GetSession()->GetPlayer();
		Creature* target = handler->getSelectedCreature();
		if (!target)
		{
			handler->PSendSysMessage(LANG_SELECT_CREATURE);
			handler->SetSentErrorMessage(true);
			return false;
		}

		if (target->GetCreatureTemplate()->Entry != 800059){
			return true;
		}


		if (target){
			target->setFaction(35);
			target->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, target->GetFollowAngle());
			return true;
		}

		return true;
	};


	static bool HandleBotFollowCommand(ChatHandler* handler, const char* /*args*/)
	{

		Player* player = handler->GetSession()->GetPlayer();
		Creature* creature = handler->getSelectedCreature();

		if (!creature)
		{
			handler->PSendSysMessage(LANG_SELECT_CREATURE);
			handler->SetSentErrorMessage(true);
			return false;
		}

		if (creature->GetCreatureTemplate()->Entry == 800059){
			creature->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, creature->GetFollowAngle());
			return true;
		}

		return true;
	};


	
		
};

void AddSC_ex_commands()
{
	new ex_commands();
}