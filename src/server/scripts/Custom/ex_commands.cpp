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

#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"

class ex_commands : public CommandScript
{
public:
	ex_commands() : CommandScript("ex_commands") { }

	std::vector<ChatCommand> GetCommands() const
	{
		static std::vector<ChatCommand> vipCommandTable =
		{
			{ "add", SEC_ADMINISTRATOR, false, &HandleBotAddCommand, "" },
			{ "del", SEC_ADMINISTRATOR, false, &HandleBotDelCommand, "" },
			{ "attack", SEC_ADMINISTRATOR, false, &HandleBotAttackCommand, "" },
				

		};


		static std::vector<ChatCommand> commandTable =
		{
			{ "bot", SEC_ADMINISTRATOR, false, NULL, "", vipCommandTable },
		};

		return commandTable;
	}

	
	//Allows members of your team, with sec > 2 to set their chars to Testing mode.
	static bool HandleBotAddCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player* player;
		player->SummonCreature(800059, player->GetPositionX() + 5, player->GetPositionY(), player->GetPositionZ() + 5, 0, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,120000);

	};


	static bool HandleBotDelCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player* player = player->GetSession()->GetPlayer();
		Creature* creature;



	};


	static bool HandleBotAttackCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player* player = player->GetSession()->GetPlayer();
		Creature* creature;



	};


	
		
};

void AddSC_ex_commands()
{
	new ex_commands();
}