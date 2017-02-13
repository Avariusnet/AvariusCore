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

void CustomPlayerLog::insertNewCurrencyLog(std::string charactername, int guid, std::string accountname, int accountid, int currencyitemid, int amount, std::string buy_action)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_CURRENCYLOG);
	stmt->setString(0, charactername);
	stmt->setInt32(1, guid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setInt32(4, currencyitemid);
	stmt->setInt32(5, amount);
	stmt->setString(6, buy_action);
	CharacterDatabase.Execute(stmt);
}
