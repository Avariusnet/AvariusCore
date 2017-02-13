#include <Custom/Logic/CustomXP.h>
#include <Custom/Logic/CustomReportSystem.h>


#ifndef _CUSTOMCHARACTERSYSTEM_H
#define _CUSTOMCHARACTERSYSTEM_H


class CustomCharacterSystem {
public:

	void sendPlayerMailwithItem(int itemid, int quantity,std::string title, std::string message, Player* player);
	void sendPlayerMailwithoutanyhing(Player* player, std::string title, std::string message);

	//PlaytimeGoodies
	bool hasPlayerAlreadyGetHisLob(int playtime, int guid);


	//CharacterFunctions
	int getAccountID(std::string charactername);
	std::string getAccountName(int accountid);	
	int getGuildLeader(int guildid);
	PreparedQueryResult getCharacterByName(std::string charactername);
	PreparedQueryResult getAccountbyID(int accountid);
	

	//Answer and Questions
	PreparedQueryResult getAntwortbyPlayerAntwort(std::string answer);
	bool hasPlayerAlreadyAnswertheQuestion(int accountid, int questionnumber);
	void addNewPlayerAnsweredQuestion(int accountid, int questionnumber);


	//Forbidden Quest or Items
	void insertQuestIntoForbiddenTable(int questid);
	void insertItemIntoForbiddenTable(int itemid);
	bool checkIfQuestisForbidden(int questid);
	bool checkIfItemisForbidden(int itemid);


	
	bool setProfessionSkill(Player* player, uint32 profession, int professioncost);

	//First Character

	void insertNewFirstCharacterforPlayerCount(int guid, std::string charactername, int accountid, std::string accountname, int guildid, std::string ip);

	PreparedQueryResult getFirstCharacterPlayerLog(int accountid);
	bool hasPlayerAlreadyAFirstChar(int accountid, std::string action_done);
	bool hasPlayerAlreadyCharacters(int accountid);
	bool countIfPlayerHasLessTotalOf2FirstCharacters(int accountid);
	int getGuildCreateDate(int guildid);
	int getGuildMemberCount(int guildid);
	
	void executeFirstCharacter(Player* player, std::string playerlog);
	std::string getLastIPbyAccount(int accountid);	

	void deleteFirstCharacterPlayerLog(int accountid);
	void updateCharacterToZeroAccount(int guid);





	void givePlayerLevelWithCurrency(Player* player, uint16 cost, uint16 maxlevel, uint32 levelup);
	void executeGuildCharacter(Player* player, std::string playerlog, int membercount);

	int getUnixTimestamp();
	void insertPlayerLob(int playtime, std::string charactername, int guid, int used);
		

};



#endif
