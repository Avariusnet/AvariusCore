#include "Custom\Logic\CustomXP.h"


#ifndef _CUSTOMCHARACTERSYSTEM_H
#define _CUSTOMCHARACTERSYSTEM_H


class CustomCharacterSystem {
public:

	int getAccountID(std::string charactername);
	std::string getAccountName(int accountid);
	
	CustomXP* CustomXP;
	
	
	int getGuildLeader(int guildid);
	PreparedQueryResult getCharacterByName(std::string charactername);
	PreparedQueryResult getAccountbyID(int accountid);
	void setBossKillCounter(int counter, int bossid);
	int getBossKillCounter(int bossid);


};



#endif