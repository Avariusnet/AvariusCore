#include <stdio.h>
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
#include "logic.h"


int getreportedquest(int questid,int x){
	PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
	selreportquest->setInt32(0, questid);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

	if (!ergebnis){
		return true;
	}

	Field* report_quest = ergebnis->Fetch();
	uint32 questreportid = report_quest[0].GetInt32();
	uint32 anzahl = report_quest[1].GetInt32();
	uint32 aktiv = report_quest[2].GetInt32();

	

	return report_quest[x].GetInt32();
}