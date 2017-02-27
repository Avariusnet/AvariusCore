#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomGMLogic.h>
#include "Config.h"



#define NOCHARACTERFOUND "No Character in DB!"
#define NOACCOUNTFOUND "No Account in DB!"
#define NOTENOUGHMONEY "Not enough Money!"
#define TOOMANYCHARACTER "You have already 10 Characters"

//Get Account By specific ID. If Result = NULL not Account with specific ID was found. All other is positive Result!
PreparedQueryResult CustomCharacterSystem::getAccountbyID(int accountid)
{
	PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_BYID);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = LoginDatabase.Query(stmt);

	if (!result) {
		return NULL;
	}

	return result;

}



bool CustomCharacterSystem::setProfessionSkill(Player * player, uint32 profession, int professioncost)
{
	CustomPlayerLog * PlayerLog = 0;

	bool hasPlayerSkill = player->HasSkill(profession);
	if (!hasPlayerSkill) {
		player->LearnDefaultSkill(profession, 1);
	}

	player->LearnDefaultSkill(profession, 6);
	player->GetPureMaxSkillValue(profession);
	player->SetSkill(profession, player->GetSkillStep(profession), 450, 450);
	PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Profession skilled");
	ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
		player->GetName());
	ChatHandler(player->GetSession()).PSendSysMessage("Your Proffession was set to Skill 450!",
		player->GetName());
	ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
		player->GetName());
	player->ModifyMoney(-professioncost * GOLD);
	return true;
	

}

void CustomCharacterSystem::insertNewFirstCharacterforPlayerCount(int guid, std::string charactername, int accountid, std::string accountname, int guildid, std::string ip)
{
	//PrepareStatement(CHAR_INS_PLAYER_FIRST_CHARACTER_COUNT, "INSERT INTO player_first_character_count (guid,charname, account, accname, time, guildid,ip) VALUES (?,?,?,?,UNIX_TIMESTAMP(),?,?)", CONNECTION_ASYNC);
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_FIRST_CHARACTER_COUNT);
	stmt->setInt32(0, guid);
	stmt->setString(1, charactername);
	stmt->setInt32(2, accountid);
	stmt->setString(3, accountname);
	stmt->setInt32(4, guildid);
	stmt->setString(5, ip);
	CharacterDatabase.Execute(stmt);
}


PreparedQueryResult CustomCharacterSystem::getFirstCharacterPlayerLog(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_FIRST_CHAR_PLAYERLOG);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return NULL;
	}

	return result;
}

//IF Player has already a FirstCharacter return true, Else return false
bool CustomCharacterSystem::hasPlayerAlreadyAFirstChar(int accountid,std::string action_done)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_FIRST_CHAR_PLAYERLOG);
	stmt->setInt32(0, accountid);
	stmt->setString(1, action_done);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}


	//PrepareStatement(CHAR_SEL_FIRST_CHAR_PLAYERLOG, "Select guid,action_done,actiondate from playerlog where accountid = ? ", CONNECTION_SYNCH);
	Field* ergebnis = result->Fetch();
	//int32 guid = ergebnis[0].GetInt32();
	std::string actiondone = ergebnis[1].GetCString();
	if (actiondone == "FirstCharacter") {
		return true;
	}

	return true;
}

bool CustomCharacterSystem::countIfPlayerHasLessTotalOf2FirstCharacters(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYER_FIRST_CHARACTER_COUNT);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	Field* ergebnis = result->Fetch();
	int32 count = ergebnis[0].GetInt32();

	if (count < 2) {
		return false;
	}

	if (count >= 2) {
		return true;
	}

	return false;
	
}

//If Returnvalue = 0, no guild was found!
int CustomCharacterSystem::getGuildCreateDate(int guildid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GUILD_CREATE_DATE);
	stmt->setInt32(0, guildid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return 0;
	}

	Field* ergebnis = result->Fetch();
	int32 guildcreatedate = ergebnis[0].GetInt32();

	return guildcreatedate;
}

//If Returnvalue = 0 no guild was found!
int CustomCharacterSystem::getGuildMemberCount(int guildid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GUILD_MEMBER_COUNT);
	stmt->setInt32(0, guildid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return 0;
	}

	Field * ergebnis = result->Fetch();
	int32 guildmembercount = ergebnis[0].GetInt32();

	return guildmembercount;
}



//If no character found return value = 0
bool CustomCharacterSystem::hasPlayerAlreadyCharacters(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_CHECK_IF_PLAYER_HAS_ALREADY_CHARACTERS);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}
	Field* ergebnis = result->Fetch();
	int count = ergebnis[0].GetInt32();

	if (count < 2) {
		return false;
	}

	return true;
}

void CustomCharacterSystem::executeFirstCharacter(Player * player, std::string playerlog)
{
	CustomPlayerLog * PlayerLog = 0;
	player->PlayerTalkClass->SendCloseGossip();
	player->SetLevel(80);
	player->TeleportTo(0, -792.84f, -1607.55f, 142.30f, 2.33f, 0);
	player->AddItem(20400, 4);
	player->SetMoney(50000000);
	player->UpdateSkillsToMaxSkillsForLevel();
	player->UpdateSkillsForLevel();
	int32 maxhealth = player->GetMaxHealth();
	player->SetMaxHealth(maxhealth);
	PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(),playerlog);
	player->SaveRecallPosition();
}

//Get Last IP by a specific Account ID. If No last Ip is found, localhost is returned!
std::string CustomCharacterSystem::getLastIPbyAccount(int accountid)
{
	PreparedStatement * stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_LAST_IP);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = LoginDatabase.Query(stmt);

	if (!result) {
		return "127.0.0.1";
	}

	Field* ergebnis = result->Fetch();
	std::string lastip = ergebnis[0].GetCString();

	return lastip;
}

void CustomCharacterSystem::playerSetSingleFirstCharacter(Player * player)
{
	bool hasPlayerAlreadyFirstChar = true;

	hasPlayerAlreadyFirstChar = hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");

	if (hasPlayerAlreadyFirstChar) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already get a first Character!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	bool twotimescharacter = true;
	twotimescharacter = countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
	if (twotimescharacter) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already used this Function more than 2 times",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	bool playerHasAlreadyCharacter = true;
	playerHasAlreadyCharacter = hasPlayerAlreadyCharacters(player->GetSession()->GetAccountId());
	if (playerHasAlreadyCharacter) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already have more than one Character!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}


	std::string accountname = "";
	accountname = getAccountName(player->GetSession()->GetAccountId());
	std::string lastip = "";
	lastip = getLastIPbyAccount(player->GetSession()->GetAccountId());
	insertNewFirstCharacterforPlayerCount(player->GetGUID(), player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), accountname, 0, lastip);
	executeFirstCharacter(player->GetSession()->GetPlayer(), "FirstCharacter");

	return;
}

void CustomCharacterSystem::playerSetGuildFirstCharacter(Player * player)
{
	bool hasPlayerAlreadyFirstChar = true;

	hasPlayerAlreadyFirstChar = hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");

	if (hasPlayerAlreadyFirstChar) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already get a first Character!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	bool twotimescharacter = true;
	twotimescharacter = countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
	if (twotimescharacter) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already used this Function more than 2 times!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	bool playerHasAlreadyCharacter = true;
	playerHasAlreadyCharacter = hasPlayerAlreadyCharacters(player->GetSession()->GetAccountId());
	if (playerHasAlreadyCharacter) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You already have more than one Character!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	int guildmember = 0;
	guildmember = getGuildMemberCount(player->GetGuildId());

	if (guildmember < 10) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Not enough Guild Members! Come again with your Friends!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());

		return;
	}

	int guildcreatedate = 0;
	guildcreatedate = getGuildCreateDate(player->GetGuildId());

	if (guildcreatedate == 0) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Not Member of a Guild!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	int unixtimestamp = 0;
	unixtimestamp = getUnixTimestamp();

	if (unixtimestamp - guildcreatedate > 1209600) {
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Your Guild is older than 2 Weeks. Sorry i cannot grant you this Feature!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	std::string accountname = "";
	accountname = getAccountName(player->GetSession()->GetAccountId());
	std::string lastip = "";
	lastip = getLastIPbyAccount(player->GetSession()->GetAccountId());
	insertNewFirstCharacterforPlayerCount(player->GetGUID(), player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), accountname, player->GetGuildId(), lastip);
	executeGuildCharacter(player->GetSession()->GetPlayer(), "FirstCharacter", guildmember);

	return;
}

void CustomCharacterSystem::deleteFirstCharacterPlayerLog(int accountid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_FIRST_CHAR_PLAYERLOG);
	stmt->setInt32(0, accountid);
	stmt->setString(1, "FirstCharacter");
	CharacterDatabase.Execute(stmt);
}

void CustomCharacterSystem::updateCharacterToZeroAccount(std::string newname,int guid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_FIRSTCHARACTER_TO_ZEROACCOUNT);
	stmt->setString(0, newname);
	stmt->setInt32(1, guid);
	CharacterDatabase.Execute(stmt);
}

std::string CustomCharacterSystem::generateNewCharacterName()
{
	auto randchar = []() -> char
	{
		const char charset[] =
			"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			"abcdefghijklmnopqrstuvwxyz";
		const size_t max_index = (sizeof(charset) - 1);
		return charset[rand() % max_index];
	};
	std::string str(5, 0);
	std::generate_n(str.begin(), 5, randchar);


	return str;
}


//Insert a new Record in player_playtime_rewards for Playtime goodies
void CustomCharacterSystem::insertNewPlayerPlayTimeReward(int playtime, std::string charactername, int guid)
{	
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYTIME_REWARDS);
	stmt->setInt32(0, playtime);
	stmt->setString(1, charactername);
	stmt->setInt32(2, guid);
	CharacterDatabase.Execute(stmt);
}

bool CustomCharacterSystem::checkIfPlayerGetPlayTimeReward(int playtime, int guid)
{
	PreparedStatement *stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYTIME_REWARDS);
	stmt->setInt32(0, playtime);
	stmt->setInt32(1, guid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	return false;
}

void CustomCharacterSystem::completeAddPlayTimeReward(int playtime, Player* player, int money)
{
	PreparedStatement *stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYTIME_REWARDS);
	stmt->setInt32(0, playtime);
	stmt->setInt32(1, player->GetGUID());
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		insertNewPlayerPlayTimeReward(playtime, player->GetSession()->GetPlayerName(), player->GetGUID());
		if (playtime == 100) {
			int itemid = sConfigMgr->GetIntDefault("Playtime.100", 38186);
			int itemamount = sConfigMgr->GetIntDefault("Playtime.100.Amount", 1);
			sendPlayerMailwithItem(itemid, itemamount, "Playtime Reward", "Here is you Playtime Reward. Thanks for playing 100h on our Server!", player->GetSession()->GetPlayer());
			return;
		}

		if (playtime == 200) {
			int itemid = sConfigMgr->GetIntDefault("Playtime.200", 38186);
			int itemamount = sConfigMgr->GetIntDefault("Playtime.200.Amount", 1);
			sendPlayerMailwithItem(itemid, itemamount, "Playtime Reward", "Here is you Playtime Reward. Thanks for playing 200h on our Server!", player->GetSession()->GetPlayer());
			return;
		}

		else {
			sendPlayerMailwithGold("Playtime Reward", "Here is you Playtime Reward. Thanks for playing on our Server!", player->GetSession()->GetPlayer(), money);
			return;
		}
		return;
	}
	player->GetSession()->SendAreaTriggerMessage("Result");
	return;

}


//if no Account found return -1
int CustomCharacterSystem::checkPlayerAccountSecurity(int accountid)
{
	PreparedStatement * stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_SECURITY);
	stmt->setInt32(0, accountid);
	PreparedQueryResult result = LoginDatabase.Query(stmt);

	if (!result) {
		return -1;
	}

	Field* ergebnis = result->Fetch();
	int32 security = ergebnis[0].GetInt32();

	return security;
}

void CustomCharacterSystem::requestNewFirstCharacter(Player * player, const char * code)
{
	CustomPlayerLog * PlayerLog = 0;
	CustomCharacterSystem * CharacterSystem = 0;
	std::string codes = code;

	if (codes != player->GetSession()->GetPlayerName()) {

		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Please try it again. You spelled your Charactername wrong!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	bool hasPlayeralreadyAFirstCharacter = CharacterSystem->hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");
	if (!hasPlayeralreadyAFirstCharacter) {
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Request declined!");
		return;
	}

	bool hasPlayerMoreThanTwoFirstCharacters = true;
	hasPlayerMoreThanTwoFirstCharacters = CharacterSystem->countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
	if (hasPlayerMoreThanTwoFirstCharacters) {
		return;
	}

	std::string accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
	PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Request new FirstChar!");
	std::string generatedCharacterName = CharacterSystem->generateNewCharacterName();
	std::string prefix = "first_";
	std::string newCharacterName = prefix + generatedCharacterName;
	CharacterSystem->deleteFirstCharacterPlayerLog(player->GetSession()->GetAccountId());
	CharacterSystem->updateCharacterToZeroAccount(newCharacterName, player->GetGUID());
	ChatHandler(player->GetSession()).PSendSysMessage("Debug: Name: %s", newCharacterName,
		player->GetName());
	player->GetSession()->LogoutPlayer(false);
	return;

}

void CustomCharacterSystem::sellPlayerVIPCurrency(Player * player, const char * code)
{
	int currencyid = sConfigMgr->GetIntDefault("Vip.Vendor.CurrencyID", 38186);
	int cost = sConfigMgr->GetIntDefault("Vip.Vendor.CurrencyCost", 1000);

	std::string eingabe = code;
	if (eingabe == "") {
		return;
	}


	CustomPlayerLog * PlayerLog = 0;

	int amount = (uint32)atoi(code);
	int32 gesgold = cost * GOLD;
	int32 overallcost = gesgold * amount;

	if (player->GetSession()->GetSecurity() >= 2) {
		ChatHandler(player->GetSession()).PSendSysMessage("Debug: gesgold: %u", gesgold / 10000,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Debug: amount: %u", amount,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Debug: overallcost: %u", overallcost / GOLD,
			player->GetName());
	}

	if (player->HasEnoughMoney(overallcost)) {
		player->ModifyMoney(-overallcost);
		player->AddItem(currencyid, amount);
		PlayerLog->addCompleteCurrencyLog(player->GetSession()->GetPlayer(), currencyid, amount, gesgold / GOLD, "VIP_CURRENCY_BUY at VIP_VENDOR");
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "VIP_CURRENCY_BUY at VIP_VENDOR");

		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("You have bought %u Tokens and payed %u Gold.", amount, overallcost / GOLD,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
		player->GetName());
	ChatHandler(player->GetSession()).PSendSysMessage("For %u of our VIP Tokens you need %u Gold!", amount, overallcost / GOLD,
		player->GetName());
	ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
		player->GetName());
	return;

}

void CustomCharacterSystem::givePlayerLevelWithCurrency(Player * player, uint16 cost, uint32 levelup,std::string logmessage)
{
	CustomPlayerLog * PlayerLog = 0;
	if (player->getLevel() < 80)
	{
		int vipcurrency = sConfigMgr->GetIntDefault("Vip.Vendor.CurrencyID", 38186);
		if (player->HasItemCount(vipcurrency, cost, true))
		{
			if (levelup == 80) {
				int actualplayerlevel = player->getLevel();
				int difference = 80 - actualplayerlevel;
				player->SetLevel(player->getLevel() + difference);
				player->DestroyItemCount(vipcurrency, cost, true);
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("You are now Level 80!",
					player->GetName());
				ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
					player->GetName());
				PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), logmessage);
				return;
			}


			player->SetLevel(player->getLevel() + levelup);
			player->DestroyItemCount(vipcurrency, cost, true);
			ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("You get your requestet Level.",
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
				player->GetName());
			PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), logmessage);
			player->PlayerTalkClass->SendCloseGossip();
			return;
		}

		else
		{
			ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("Not enough VIP Tokens to buy Level!",
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
				player->GetName());
			PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), logmessage);
			player->PlayerTalkClass->SendCloseGossip();
			return;
		}
	}

	else
	{
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Your Level is to high for this Option!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

}

void CustomCharacterSystem::executeGuildCharacter(Player * player, std::string playerlog, int membercount)
{
	CustomPlayerLog * PlayerLog = 0;
	player->PlayerTalkClass->SendCloseGossip();
	player->SetLevel(80);
	player->TeleportTo(0, -792.84f, -1607.55f, 142.30f, 2.33f, 0);
	player->AddItem(20400, 4);
	player->SetMoney(50000000);
	player->UpdateSkillsToMaxSkillsForLevel();
	player->UpdateSkillsForLevel();
	if (membercount >= 10 && membercount < 25) {
		player->LearnDefaultSkill(762, 3);
	}
	if (membercount > 25) {
		player->LearnDefaultSkill(762, 4);
	}
	
	PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), playerlog);
	player->SaveRecallPosition();
}

int CustomCharacterSystem::getUnixTimestamp()
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_UNIX_TIMESTAMP);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return 0;
	}

	Field* ergebnis = result->Fetch();
	int unixtimestamp = ergebnis[0].GetInt64();

	return unixtimestamp;
}



void CustomCharacterSystem::sendPlayerMailwithItem(int itemid, int quantity,std::string title, std::string message, Player * player)
{
	
	Item* item = Item::CreateItem(itemid, quantity);
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	item->SaveToDB(trans);
	MailDraft(title, message).AddItem(item)
		.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
	CharacterDatabase.CommitTransaction(trans);
	
}

void CustomCharacterSystem::sendPlayerMailwithoutanyhing(Player * player, std::string title, std::string message)
{
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	MailDraft(title, message)
		.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
	CharacterDatabase.CommitTransaction(trans);
}

void CustomCharacterSystem::sendPlayerMailwithGold(std::string title, std::string message, Player * player, int money)
{
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	MailDraft(title, message).AddMoney(money * GOLD)
		.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
	CharacterDatabase.CommitTransaction(trans);
}

// Return AccountID with known Charactername. Value = 0 NO ACCOUNT FOUND,  ID != 0 ACCOUNT ID FOUND! 
//RETURN VALUE IS ACCOUNTID
int CustomCharacterSystem::getAccountID(std::string charactername) {
	PreparedStatement* getaccountid = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ACCOUNT_BY_NAME);
	getaccountid->setString(0, charactername);
	PreparedQueryResult accountidresult = CharacterDatabase.Query(getaccountid);

	if (!accountidresult) {
		return 0;
	}

	Field* accountidfeld = accountidresult->Fetch();
	uint32 accountid = accountidfeld[0].GetInt32();

	return accountid;
}


//Return Accountname with known AccountID. Value = "0" NO ACCOUNT WITH ID WAS FOUND, ID != 0 ACCOUNT WITH ID WAS FOUND.
//RETURN VALUE IS ACCOUNTNAME
std::string CustomCharacterSystem::getAccountName(int accountid) {
	PreparedStatement * getaccountname = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_BYID);
	getaccountname->setInt32(0, accountid);
	PreparedQueryResult accountnameresult = LoginDatabase.Query(getaccountname);

	if (!accountnameresult) {
		return "0";
	}


	//finaly get Accountname
	Field* accountnamefield = accountnameresult->Fetch();
	std::string accountname = accountnamefield[0].GetString();

	return accountname;
}

void CustomCharacterSystem::moveCharacterToAnotherAccount(Player * player, const char* args)
{
	CustomPlayerLog * PlayerLog = 0;
	CustomGMLogic * GMLogic = 0;
	std::string accountname = args;
	PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_ID_BY_NAME);
	stmt->setString(0, accountname);
	PreparedQueryResult result = LoginDatabase.Query(stmt);

	if (!result) {
		player->GetSession()->SendNotification(NOACCOUNTFOUND);
		return;
	}


	Field* feld = result->Fetch();
	uint32 accid = feld[0].GetInt32();


	PreparedStatement* charsum = CharacterDatabase.GetPreparedStatement(CHAR_SEL_SUM_CHARS);
	charsum->setInt32(0, accid);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(charsum);

	if (!ergebnis) {
		player->GetSession()->SendNotification("Error beim Counten der Charaktere!");
		return;
	}

	Field* felder = ergebnis->Fetch();
	uint32 charactersum = felder[0].GetInt32();

	if (player->GetSession()->GetSecurity() > 0) {
		GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer(), "Try to transfer Character to a Lower or Higher Sec Account!");
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Warning: GM should be a supporter not a cheater!",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("This incident has been logged in DB.",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
			player->GetName());
		return;
	}

	if (charactersum <= 9 && player->HasEnoughMoney(5000 * GOLD)) {
		PreparedStatement* updateacc = CharacterDatabase.GetPreparedStatement(CHAR_UPD_ACCOUNT_ID);
		updateacc->setInt32(0, accid);
		updateacc->setInt32(1, player->GetGUID());
		CharacterDatabase.Execute(updateacc);
		player->ModifyMoney(-5000 * GOLD);
		player->GetSession()->SendNotification("Der Accounttausch wurde vollzogen");
		ChatHandler(player->GetSession()).PSendSysMessage("Der Accounttausch wurde vollzogen.",
			player->GetName());
		std::ostringstream tt;
		tt << "Transfer character to Account " << accountname;
		std::string reason = tt.str().c_str();
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		return;
	}

	if (!player->HasEnoughMoney(5000 * GOLD)) {
		player->GetSession()->SendNotification(NOTENOUGHMONEY);
	}

	if (charactersum == 10) {
		player->GetSession()->SendNotification(TOOMANYCHARACTER);
		return;
	}
	return;

}

void CustomCharacterSystem::doesCharacterExist(Player * player, const char * args)
{
	std::string charactername = args;
	CustomPlayerLog * PlayerLog = 0;

	PreparedStatement* charselbyname = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CHARACTER_BYNAME);
	charselbyname->setString(0, charactername);
	PreparedQueryResult result = CharacterDatabase.Query(charselbyname);

	if (!result) {
		player->GetSession()->SendNotification(NOCHARACTERFOUND);
		return;
	}

	if (result) {


		Field* feld = result->Fetch();
		uint32 guid = feld[0].GetInt32();
		uint32 account = feld[1].GetInt32();
		std::string name = feld[2].GetCString();
		//uint32 level = feld[3].GetInt32();
		uint32 totaltime = feld[4].GetInt32();

		PreparedStatement* getaccountnamebyid = LoginDatabase.GetPreparedStatement(LOGIN_SEL_ACCOUNT_BYID);
		getaccountnamebyid->setInt32(0, account);
		PreparedQueryResult ergebnis = LoginDatabase.Query(getaccountnamebyid);

		if (!result) {
			PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Player Character search error!");
			ChatHandler(player->GetSession()).PSendSysMessage("#############################################",
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("No Character with Name %s exist.", charactername,
				player->GetName());
			ChatHandler(player->GetSession()).PSendSysMessage("############################################",
				player->GetName());
			return;
		}


		Field* ergfeld = ergebnis->Fetch();
		std::string accname = ergfeld[0].GetCString();
		uint32 spielzeith = totaltime / 60 / 60;
		uint32 spielzeit = totaltime / 60 / 60 / 24;

		std::ostringstream tt;
		tt << "Search for Character " << charactername;
		std::string reason = tt.str().c_str();
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		ChatHandler(player->GetSession()).PSendSysMessage("############################################",
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Charactername: %s", charactername,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Character GUID: %u", guid,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Accountname: %s", accname,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Playtime in Hours: %u", spielzeith,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("Playtime in Days: %u", spielzeit,
			player->GetName());
		ChatHandler(player->GetSession()).PSendSysMessage("############################################",
			player->GetName());
		return;
	}
	return;
}



/*Return the Characterresult with following parameters guid,account,name,level,totaltime. 
PreparedQueryResult CustomCharacterSystem::getCharacterByName(std::string charactername)
{
	PreparedStatement* charselbyname = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CHARACTER_BYNAME);
	charselbyname->setString(0, charactername);
	PreparedQueryResult result = CharacterDatabase.Query(charselbyname);
	if (!result) {
		return NULL;
	}

	return result;
}*/


//Return the GUID of the Guildleader. If an Error occurs 0 is the returnvalue
int CustomCharacterSystem::getGuildLeader(int guildid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GUILD_LEADER);
	stmt->setInt32(0, guildid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return 0;
	}

	Field *fields = result->Fetch();
	uint32 leaderid = fields[0].GetUInt32();

	return leaderid;


}
