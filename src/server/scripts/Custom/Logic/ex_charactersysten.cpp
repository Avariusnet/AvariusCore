#include <Custom/Logic/CustomCharacterSystem.h>



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



void CustomCharacterSystem::sendPlayerMail(int itemid, int quantity,std::string title, std::string message, Player * player)
{
	
	Item* item = Item::CreateItem(itemid, quantity);
	SQLTransaction trans = CharacterDatabase.BeginTransaction();
	item->SaveToDB(trans);
	MailDraft(title, message).AddItem(item)
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
