


#ifndef _CUSTOMWORLDSYSTEM_H
#define _CUSTOMWORLDSYSTEM_H

class CustomWorldSystem {
public:


	int getItemID(int itemid);
	void setBossKillCounter(int counter, int bossid);
	int getBossKillCounter(int bossid);
	std::string getQuestNamebyID(int questid);
	int getQuestIDbyName(std::string questname);
	bool doesItemExistinDB(int itemid);
};



#endif