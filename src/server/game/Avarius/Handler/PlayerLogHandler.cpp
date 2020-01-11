#include "PlayerLogHandler.h"
#include "CharacterSystemHandler.h"


PlayerLogHandler* PlayerLogHandler::instance()
{
    static PlayerLogHandler instance;
    return &instance;
}


void PlayerLogHandler::insertNewPlayerLog(std::string charactername,int guid, std::string accountname, int accountid, std::string action_done)
{
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYERLOG);
	stmt->setString(0, charactername);
	stmt->setInt32(1, guid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setString(4, action_done);
	trans->Append(stmt);
	CharacterDatabase.CommitTransaction(trans);
}

void PlayerLogHandler::insertNewCurrencyLog(std::string charactername, int guid, std::string accountname, int accountid, int currencyitemid, int amount,int amountcost, std::string buy_action)
{
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_CURRENCYLOG);
	stmt->setString(0, charactername);
	stmt->setInt32(1, guid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setInt32(4, currencyitemid);
	stmt->setInt32(5, amount);
	stmt->setInt32(6, amountcost);
	stmt->setString(7, buy_action);
	trans->Append(stmt);
	CharacterDatabase.CommitTransaction(trans);
}

void PlayerLogHandler::addCompletePlayerLog(Player * player, std::string log_message)
{
	
	std::string accountname = "";
	accountname = sCharacterSystem->getAccountName(player->GetSession()->GetAccountId());
	insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), log_message);
	
}

void PlayerLogHandler::addCompleteCurrencyLog(Player * player, int currencyid, int amount, int amountcost, std::string buy_action)
{
	std::string accountname = "";
	accountname = sCharacterSystem->getAccountName(player->GetSession()->GetAccountId());
	insertNewCurrencyLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), currencyid, amount, amountcost, buy_action);
}
