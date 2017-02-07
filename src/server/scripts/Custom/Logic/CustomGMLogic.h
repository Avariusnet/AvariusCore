
#ifndef _GMLOGIC_H
#define _GMLOGIC_H

class CustomGMLogic {
public:

	void addGMLog(std::string charactername, int characterid, std::string accountname, int accountid, std::string action);
	void addGMPlayerCount(int accountid);
	void updateGMPlayerCount(int counter, int accountid);
	PreparedQueryResult selectGMPlayerCount(int accountid);

};



#endif