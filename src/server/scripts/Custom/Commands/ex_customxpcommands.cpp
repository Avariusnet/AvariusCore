#include "Config.h"
#include "Custom\Logic\CustomXP.h"

class ex_customxpcommands : public CommandScript
{
public:
	ex_customxpcommands() : CommandScript("ex_customxpcommands") { }

	std::vector<ChatCommand> GetCommands() const
	{

		static std::vector<ChatCommand> commandTable =
		{
			{ "xprate", SEC_ADMINISTRATOR , false, &HandleXPRate, "" },

			

		};

		return commandTable;
	}


	static bool HandleXPRate(ChatHandler* handler, const char* args) {
		if (sConfigMgr->GetBoolDefault("Custom.XP", 1)) {


			CustomXP * customxp;
			Player* player = handler->GetSession()->GetPlayer();

			char* px = strtok((char*)args, " ");

			if (!px) {
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Your XP Multiplier is currently: %u", customxp->getCustomXPValue(player->GetGUID()));
				handler->PSendSysMessage("To change your Multiplier just type '.xprate 2' for a 2x Multifplier.");
				handler->PSendSysMessage("Valid Values are between 1 and 5.");
				handler->PSendSysMessage("Have Fun with it, %s.", player->GetSession()->GetPlayerName());
				handler->PSendSysMessage("##########################################################");
				return true;
			}


			uint32 newxpvalue = (uint32)atoi(px);

			if (newxpvalue == 0 || newxpvalue > 5) {
				handler->PSendSysMessage("Your Values are invalid. Use only between 1 and 5!");
				return true;
			}


			std::string charactername = customxp->getCustomXPExntry(player->GetGUID());
			if (player->GetSession()->GetSecurity() <= 2) {
				handler->PSendSysMessage("Debug: XPValue: %s", charactername);
				handler->PSendSysMessage("Debug: GUID: %u", player->GetGUID());
			}


			if (charactername == "0") {
				customxp->setCustomXPEntry(player->GetSession()->GetPlayerName(), player->GetGUID(), newxpvalue);
				handler->PSendSysMessage("Your XP Multiplier is set to %u", newxpvalue);
				return true;
			}


			customxp->updateCustomXPEntry(newxpvalue, player->GetGUID());
			handler->PSendSysMessage("Your XP Multiplier is set to %u", newxpvalue);
			return true;
		}

		else {
			return true;
		}
	}

	
};

void AddSC_ex_customxpcommands()
{
	new ex_customxpcommands();
}
