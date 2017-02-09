#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>


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

PreparedQueryResult CustomCharacterSystem::getAntwortbyPlayerAntwort(std::string answer)
{

	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ANTWORTEN_NACH_ANTWORT);
	stmt->setString(0, answer);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(stmt);
	
	if (!ergebnis) {
		return NULL;
	}

	return ergebnis;
}

bool CustomCharacterSystem::hasPlayerAlreadyAnswertheQuestion(int accountid, int questionnumber)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_BEANTWORTET);
	stmt->setInt32(0, accountid);
	stmt->setInt32(1, questionnumber);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	return true;
}

void CustomCharacterSystem::addNewPlayerAnsweredQuestion(int accountid, int questionnumber)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_BEANTWORTET);
	stmt->setInt32(0, accountid);
	stmt->setInt32(1, questionnumber);
	CharacterDatabase.Execute(stmt);

}

void CustomCharacterSystem::insertQuestIntoForbiddenTable(int questid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_QUEST_IN_FORBIDDEN_TABLE);
	stmt->setInt32(0, questid);
	CharacterDatabase.Execute(stmt);
}

void CustomCharacterSystem::insertItemIntoForbiddenTable(int itemid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEM_IN_FORBIDDEN_TABLE);
	stmt->setInt32(0, itemid);
	CharacterDatabase.Execute(stmt);
}

bool CustomCharacterSystem::checkIfQuestisForbidden(int questid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_QUEST_FROM_FORBIDDEN_TABLE);
	stmt->setInt32(0, questid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}
	return true;
}

bool CustomCharacterSystem::checkIfItemisForbidden(int itemid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEM_FROM_FORBIDDEN_TABLE);
	stmt->setInt32(0, itemid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}
	return true;
}

bool CustomCharacterSystem::setProfessionSkill(Player * player, uint32 profession, int professioncost)
{
	CustomPlayerLog * PlayerLog = 0;


	player->LearnDefaultSkill(profession, 6);
	//uint32 skill = player->GetSkillValue(beruf);
	player->GetPureMaxSkillValue(profession);
	player->SetSkill(profession, player->GetSkillStep(profession), 450, 450);
	std::string accountname = "";
	accountname = CustomCharacterSystem::getAccountName(player->GetSession()->GetAccountId());
	PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Profession skilled");
	ChatHandler(player->GetSession()).PSendSysMessage("[Profession System] Your Profession was skilled to 450.",
		player->GetName());
	player->ModifyMoney(-professioncost * GOLD);
	return true;
	

}

void CustomCharacterSystem::insertNewFirstCharacterforPlayer(int guid, std::string charactername, int accountid, std::string accountname, int guildid, std::string ip)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_FIRST_CHAR);
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

void CustomCharacterSystem::updateCharacterToAnotherAccount(int accountid, int guid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_CHARACTER_TO_ACCOUNT);
	stmt->setInt32(0, accountid);
	stmt->setInt32(1, guid);
	CharacterDatabase.Execute(stmt);
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
	player->TeleportTo(0, -792.84, -1607.55, 142.30, 2.33, 0);
	player->AddItem(20400, 4);
	player->SetMoney(50000000);
	player->UpdateSkillsToMaxSkillsForLevel();
	player->UpdateSkillsForLevel();
	std::string accountname = "";
	accountname = CustomCharacterSystem::getAccountName(player->GetSession()->GetAccountId());
	PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), playerlog);
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


//Insert a new Record in Lob for Playtime goodies
void CustomCharacterSystem::insertPlayerLob(int playtime, std::string charactername, int guid, int used)
{
	
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_LOB);
	stmt->setInt32(0, playtime);
	stmt->setString(1, charactername);
	stmt->setInt32(2, guid);
	stmt->setInt32(3, used);
}

void CustomCharacterSystem::givePlayerLevelWithCurrency(Player * player, uint16 cost, uint16 maxlevel, uint32 levelup)
{
	if (player->getLevel() <= maxlevel)
	{

		if (player->HasItemCount(38186, cost, true))
		{
			player->SetLevel(player->getLevel() + levelup);
			player->DestroyItemCount(38186, cost, true);
			player->GetSession()->SendNotification("Die Level wurden dir gutgeschrieben.");
			player->PlayerTalkClass->SendCloseGossip();
			return;
		}

		else
		{
			player->GetSession()->SendNotification("Du hast leider nicht genug Astrale Kredite um dir eine Levelaufwertung zu kaufen.");
			player->PlayerTalkClass->SendCloseGossip();
			return;
		}
	}

	else
	{
		player->GetSession()->SendNotification("Dein Level ist zu hoch.");
		return;
	}

}

void CustomCharacterSystem::executeGuildCharacter(Player * player, std::string playerlog, int membercount)
{
	CustomPlayerLog * PlayerLog = 0;
	player->PlayerTalkClass->SendCloseGossip();
	player->SetLevel(80);
	player->TeleportTo(0, -792.84, -1607.55, 142.30, 2.33, 0);
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
	std::string accountname = "";
	accountname = CustomCharacterSystem::getAccountName(player->GetSession()->GetAccountId());
	PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), playerlog);
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

bool CustomCharacterSystem::hasPlayerAlreadyGetHisLob(int playtime, int guid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOB);
	stmt->setInt32(0, playtime);
	stmt->setInt32(1, guid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	return true;
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



//Return the Characterresult with following parameters guid,account,name,level,totaltime. 
PreparedQueryResult CustomCharacterSystem::getCharacterByName(std::string charactername)
{
	PreparedStatement* charselbyname = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CHARACTER_BYNAME);
	charselbyname->setString(0, charactername);
	PreparedQueryResult result = CharacterDatabase.Query(charselbyname);
	if (!result) {
		return NULL;
	}

	return result;
}


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
