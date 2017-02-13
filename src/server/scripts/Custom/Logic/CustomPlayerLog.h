#ifndef _PLAYERLOG_H
#define _PLAYERLOG_H

class CustomPlayerLog {
public:

	void insertNewPlayerLog(std::string charactername, int guid, std::string accountname, int accountid, std::string action_done);
	void insertNewCurrencyLog(std::string charactername, int guid, std::string accountname, int accountid, int currencyitemid, int amount, std::string buy_action);

};



#endif