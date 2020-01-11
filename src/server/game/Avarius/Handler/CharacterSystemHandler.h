#include "XPHandler.h"
#include "ReportHandler.h"
#include <string>
#include "DatabaseEnv.h"
#include "Player.h"

#ifndef _CHARACTER_SYSTEM_HANDLER_H
#define _CHARACTER_SYSTEM_HANDLER_H


class CharacterSystemHandler {

private:

    CharacterSystemHandler() {};
    ~CharacterSystemHandler() {};


	int getUnixTimestamp();
	void insertNewFirstCharacterforPlayerCount(int guid, std::string charactername, int accountid, std::string accountname, int guildid, std::string ip);
	PreparedQueryResult getFirstCharacterPlayerLog(int accountid);
	int checkPlayerAccountSecurity(int accountid);
	


	
	int getGuildLeader(int guildid);
	//PreparedQueryResult getCharacterByName(std::string charactername);
	PreparedQueryResult getAccountbyID(int accountid);
	std::string generateNewCharacterName();

	//First Character
	bool hasPlayerAlreadyAFirstChar(int accountid, std::string action_done);
	bool hasPlayerAlreadyCharacters(int accountid);
	bool countIfPlayerHasLessTotalOf2FirstCharacters(int accountid);
	int getGuildCreateDate(int guildid);
	int getGuildMemberCount(int guildid);
	void executeFirstCharacter(Player* player, std::string playerlog);
	std::string getLastIPbyAccount(int accountid);
	void executeGuildCharacter(Player* player, std::string playerlog, int membercount);
	void deleteFirstCharacterPlayerLog(int accountid);
	void updateCharacterToZeroAccount(std::string newname, int guid);
	void insertNewPlayerPlayTimeReward(int playtime, std::string charactername, int guid);

public:

    static CharacterSystemHandler* instance();

	//Send PlayerMails
	void sendPlayerMailwithItem(int itemid, int quantity, std::string title, std::string message, Player* player);
	void sendPlayerMailwithoutanyhing(Player* player, std::string title, std::string message);
	void sendPlayerMailwithGold(std::string title, std::string message, Player* player, int money);

	//PlayTimeRewards
	
	bool checkIfPlayerGetPlayTimeReward(int playtime, int guid);
	void completeAddPlayTimeReward(int playtime, Player* player, int money, int rewarditem, std::string message);

	//CharacterFunctions
	int getAccountID(std::string charactername);
	std::string getAccountName(int accountid);
	void moveCharacterToAnotherAccount(Player* player, const char* args);
	void doesCharacterExist(Player * player, const char* args);

	//Execute first Character complete
	void playerSetSingleFirstCharacter(Player * player);
	void playerSetGuildFirstCharacter(Player * player);
	void playerGiveFirstCharacter(Player* player);
	void requestNewFirstCharacter(Player* player, const char* code);
	bool checkifPlayerisQualifiedforFirstCharacter(Player* player);

	//Character VIP Functions
	void givePlayerLevelWithCurrency(Player* player, uint16 cost, uint32 levelup, std::string logmessage);
	void sellPlayerVIPCurrency(Player* player, const char* code);

	//ProffesionSystem
	void completeLearnProffesion(Player *pPlayer, SkillType skill,std::string Logmessage);
	bool PlayerAlreadyHasTwoProfessions(const Player * pPlayer);
	bool LearnAllRecipesInProfession(Player * pPlayer, SkillType skill);
	void LearnSkillRecipesHelper(Player * player, uint32 skill_id);
	bool IsSecondarySkill(SkillType skill);
	uint32 PlayerMaxLevel();

	//FBEvent
	int countFBEventAccounts(Player*player);
	void insFBEvent(Player* player);

	//EVENTNPC
	bool isEventActive(int eventid);
	void eventNPCAI(int eventid, Creature * creature);


};

#define sCharacterSystem CharacterSystemHandler::instance()

#endif
