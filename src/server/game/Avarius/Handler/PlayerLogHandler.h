#ifndef _PLAYER_LOG_HANDLER_H
#define _PLAYER_LOG_HANDLER_H

class PlayerLogHandler {
private:
	void insertNewPlayerLog(std::string charactername, int guid, std::string accountname, int accountid, std::string action_done);
	void insertNewCurrencyLog(std::string charactername, int guid, std::string accountname, int accountid, int currencyitemid, int amount, int amountcost, std::string buy_action);


public:
    static PlayerLogHandler* instance();
	
	void addCompletePlayerLog(Player * player, std::string log_message);
	void addCompleteCurrencyLog(Player* player,int currencyid, int amount, int amountcost,std::string buy_action);

};

#define sPlayerLog PlayerLogHandler::instance()

#endif
