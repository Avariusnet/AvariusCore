#include <stdio.h>
#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Common.h"
#include "Player.h"
#include "Config.h"
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
#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ReputationMgr.h"
#include "ScriptMgr.h"
#include "Custom\Logic\CustomCharacterSystem.h"
#include "Custom\Logic\ReportSystem.h"
#include "Custom\Logic\GMLogic.h"

class ex_testcommands : public CommandScript
{
public:
	ex_testcommands() : CommandScript("ex_testcommands") { }

	std::vector<ChatCommand> GetCommands() const
	{

		
	
		static std::vector<ChatCommand> logicTable =
		{
			{ "id", SEC_ADMINISTRATOR , false, &HandleLogicIDTest, "" },
			{ "report", SEC_ADMINISTRATOR , false, &HandleLogicReportTest, "" },
			{ "gmlog", SEC_ADMINISTRATOR , false, &HandleLogicGMLogTest, "" },
			{ "name", SEC_ADMINISTRATOR, false, &HandleLogicNameTest, "" },

		};

		static std::vector<ChatCommand> commandTable =
		{
			{ "logic", SEC_ADMINISTRATOR , false, NULL, "" , logicTable },

		};

		return commandTable;
	}


	static bool HandleLogicIDTest(ChatHandler* handler, const char* args) {
		Player* player = handler->GetSession()->GetPlayer();
		CustomCharacterSystem* customcharactersystem;
		
		int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
		
		std::ostringstream ss;
		ss << "Die AccountId dieses Accounts ist:" << accountid;

		player->GetSession()->SendAreaTriggerMessage(ss.str().c_str());
		return true;
	}

	static bool HandleLogicNameTest(ChatHandler* handler, const char* args) {
		Player* player = handler->GetSession()->GetPlayer();
		CustomCharacterSystem* customcharactersystem;

		int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
		std::string accountname = customcharactersystem->getAccountName(accountid);

		std::ostringstream ss;
		ss << "Die AccountId dieses Accounts ist:" << accountid << ". Der Name ist: " << accountname;

		player->GetSession()->SendAreaTriggerMessage(ss.str().c_str());
		return true;
	}


	static bool HandleLogicReportTest(ChatHandler* handler, const char* args) {
		Player* player = handler->GetSession()->GetPlayer();
		CustomCharacterSystem* customcharactersystem;
		ReportSystem* reportsystem;
		
		

		std::string eingabe = std::string((char*)args);

		if (eingabe == "") {
			handler->PSendSysMessage("Bitte Questid angeben.");
			return true;
		}

		char* px = strtok((char*)args, " ");

		if (!px)
			return false;

		uint32 questid = (uint32)atoi(px);

		bool isreported = reportsystem->isAlreadyReported(questid);

		std::ostringstream ss;
		ss << "Der Befehl hat den return wert: " << isreported;

		player->GetSession()->SendAreaTriggerMessage(ss.str().c_str());
		return true;
	}

	static bool HandleLogicGMLogTest(ChatHandler* handler, const char* args) {
		GMLogic* gmlogic;
		CustomCharacterSystem* customcharactersystem;
		Player* player = handler->GetSession()->GetPlayer();
		int32 accountid = customcharactersystem->getAccountID(player->GetSession()->GetPlayerName());
		std::string accountname = customcharactersystem->getAccountName(accountid);
		gmlogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, accountid, "Testinsert");
		player->GetSession()->SendAreaTriggerMessage("Command executed");
		return true;
	}
};

void AddSC_ex_testcommands()
{
	new ex_testcommands();
}

