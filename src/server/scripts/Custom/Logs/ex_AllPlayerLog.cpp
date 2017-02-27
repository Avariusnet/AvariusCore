#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include "Bag.h"
#include "Common.h"
#include "Config.h"
#include "DatabaseEnv.h"
#include "Define.h"
#include "Field.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include "Bag.h"
#include "Mail.h"
#include "Common.h"
#include "CalendarMgr.h"
#include "Config.h"
#include "DatabaseEnv.h"
#include "DBCStructure.h"
#include "Define.h"
#include "Field.h"
#include "GameEventMgr.h"
#include "Item.h"
#include "Language.h"
#include "Log.h"
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
#include "Guild.h"
#include "Arena.h"
#include "ArenaTeam.h"
#include "ArenaScore.h"
#include "ArenaTeamMgr.h"
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomCharacterSystem.h>


class QuestLog : public PlayerScript
{

public:
	QuestLog() : PlayerScript("QuestLog") {}


	void OnQuestStatusChange(Player* player, uint32 questId) {
		CustomPlayerLog * PlayerLog = 0;
		std::ostringstream tt;
		tt << "Queststatus changed: " << questId;
		std::string reason = tt.str().c_str();
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		return;
	
	}

		


};

class GraveYardReleaseLog : public PlayerScript
{
public: GraveYardReleaseLog() : PlayerScript("GraveYardReleaseLog") {}

		void OnPlayerRepop(Player* player) { 
			CustomPlayerLog * PlayerLog = 0;
			PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Release Soul with Release Button!");
			return;
		}

};




class LevelLog : public PlayerScript
{
public:
	LevelLog() : PlayerScript("LevelLog") {}




	void OnLevelChanged(Player* player, uint8 oldLevel) {
		CustomPlayerLog * PlayerLog = 0;
		std::ostringstream tt;
		tt << "Level changed from " << oldLevel  << " to " << oldLevel+1 ;
		std::string reason = tt.str().c_str();
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		return;

	}


};


class CreatureKillLog : public PlayerScript 
{
public:
	CreatureKillLog() : PlayerScript("CreatureKillLog") {}

	void OnCreatureKill(Player* player, Creature* killed) {
		std::string creaturename = killed->GetName();
		CustomPlayerLog * PlayerLog = 0;
		std::ostringstream tt;
		tt <<"Killed: " << creaturename;
		std::string reason = tt.str().c_str();
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		return;
	}

};


class ResetTalentLog : public PlayerScript {
public:
	ResetTalentLog() : PlayerScript("ResetTalentLog") { }

	void OnTalentsReset(Player* player, bool /*noCost*/) { 
		CustomPlayerLog * PlayerLog = 0;
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Reset Talents");
		return;
	}

};


void AddSC_logscript()
{
	new ResetTalentLog();
	new GraveYardReleaseLog();
	new QuestLog();
	new LevelLog();
	new CreatureKillLog();
}