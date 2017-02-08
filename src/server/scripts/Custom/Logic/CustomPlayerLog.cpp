#include "CustomPlayerLog.h"

void CustomPlayerLog::insertNewPlayerLog(std::string charactername,int guid, std::string accountname, int accountid, std::string action_done)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYERLOG);
	stmt->setString(0, charactername);
	stmt->setInt32(1, guid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setString(4, action_done);
	CharacterDatabase.Execute(stmt);

}
