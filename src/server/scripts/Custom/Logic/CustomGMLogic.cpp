#include <Custom/Logic/CustomGMLogic.h>






//Insert a GM Log action, to control your GM´s. No Return Value. Log is found in Character DB , Tablename: "gm_action"
void CustomGMLogic::addGMLog(std::string charactername, int characterid, std::string accountname, int accountid, std::string action) {


	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_GM_ACTION);
	stmt->setString(0, charactername);
	stmt->setInt32(1, characterid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setString(4, action);
	CharacterDatabase.Execute(stmt);
}

void CustomGMLogic::addGMPlayerCount(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_GM_ACTION_PLAYER_COUNT);
	stmt->setInt32(0, accountid);
	stmt->setInt32(1, 1);
	CharacterDatabase.Execute(stmt);
}

void CustomGMLogic::updateGMPlayerCount(int counter, int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_GM_ACTION_PLAYER_COUNT);
	stmt->setInt32(0, counter);
	stmt->setInt32(1, accountid);
	CharacterDatabase.Execute(stmt);
}

PreparedQueryResult CustomGMLogic::selectGMPlayerCount(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GM_ACTION_PLAYER_COUNT);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);
	
	if (!result) {
		return NULL;
	}
		

	return result;
}
