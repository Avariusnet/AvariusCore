#include "Custom\Logic\CustomXP.h"
#include "Custom\Logic\ReportSystem.h"


#ifndef _CUSTOMCHARACTERSYSTEM_H
#define _CUSTOMCHARACTERSYSTEM_H


class CustomCharacterSystem {
public:

	int getAccountID(std::string charactername);
	std::string getAccountName(int accountid);	
	int getGuildLeader(int guildid);
	PreparedQueryResult getCharacterByName(std::string charactername);
	PreparedQueryResult getAccountbyID(int accountid);
	


};



#endif