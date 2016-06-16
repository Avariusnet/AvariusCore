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

	std::vector<ChatCommand> GetCommands() const override
	{

		static std::vector<ChatCommand> commandTable =
		{

			//Set your Characterstats to test single Bosses
			{ "tester", SEC_ADMINISTRATOR, false, &HandleTestingCommand, ""},
		};

		return commandTable;
	}

	
	//Allows members of your team, with sec > 2 to set their chars to Testing mode.
	static bool HandleTestingCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player *player = handler->GetSession()->GetPlayer();
		if (player->GetSession()->GetSecurity() < 2){
			return false;
		}
		player->ResurrectPlayer(100, false);
		player->SetHealth(400000000);
		player->SetGameMaster(true);
		player->DurabilityRepairAll(false,0,false);
		
        return true;
	}


	
	
		
};

void AddSC_ex_commands()
{
	new ex_commands();
}