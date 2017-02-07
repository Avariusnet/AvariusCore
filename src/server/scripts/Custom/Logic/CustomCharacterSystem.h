#include <Custom/Logic/CustomXP.h>
#include <Custom/Logic/ReportSystem.h>


#ifndef _CUSTOMCHARACTERSYSTEM_H
#define _CUSTOMCHARACTERSYSTEM_H


class CustomCharacterSystem {
public:

	void sendPlayerMailwithItem(int itemid, int quantity,std::string title, std::string message, Player* player);

	int getAccountID(std::string charactername);
	std::string getAccountName(int accountid);	
	int getGuildLeader(int guildid);
	PreparedQueryResult getCharacterByName(std::string charactername);
	PreparedQueryResult getAccountbyID(int accountid);
	
	PreparedQueryResult getAntwortbyPlayerAntwort(std::string answer);
	bool hasPlayerAlreadyAnswertheQuestion(int accountid, int questionnumber);
	void addNewPlayerAnsweredQuestion(int accountid, int questionnumber);

	void insertQuestIntoForbiddenTable(int questid);
	void insertItemIntoForbiddenTable(int itemid);
	bool checkIfQuestisForbidden(int questid);
	bool checkIfItemisForbidden(int itemid);
};



#endif
