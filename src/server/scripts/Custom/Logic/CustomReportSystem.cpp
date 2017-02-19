#include "CustomReportSystem.h"
#include "CharacterDatabase.h"



bool CustomReportSystem::checkIfPlayerHasAlreadyReportedQuest(int accountid, int questid)
{

	PreparedStatement * selreportquestplayer = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYER_REPORT_QUEST);
	selreportquestplayer->setInt32(0, accountid);
	selreportquestplayer->setInt32(1, questid);
	PreparedQueryResult existplayer = CharacterDatabase.Query(selreportquestplayer);

	if (!existplayer) {
		return false;
	}

	return 	true;
}

void CustomReportSystem::addNewPlayerReportInDB(std::string playername, std::string guildname, int guid, int accountid, int questid)
{

	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
	stmt->setString(0, playername);
	stmt->setString(1, guildname);
	stmt->setInt32(2, guid);
	stmt->setInt32(3, accountid);
	stmt->setInt32(4, questid);
	CharacterDatabase.Execute(stmt);

}


//Insert an new reported Quest in DB if the quest isn´t already reported!
void CustomReportSystem::addNewQuestReportInDB(std::string questname, int questid, int quantity, int active)
{

	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
	stmt->setString(0, questname);
	stmt->setInt32(1, questid);
	stmt->setInt32(2, quantity);
	stmt->setInt32(3, active);
	CharacterDatabase.Execute(stmt);
}



//Update quantity of a speicifc questid
void CustomReportSystem::UpdateQuantityQuestReportInDB(int quantity, int questid)
{

	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_COUNT);
	stmt->setInt32(0, quantity);
	stmt->setInt32(1, questid);
	CharacterDatabase.Execute(stmt);
}


//Activate or Deactivate a reported Quest with specific questid
void CustomReportSystem::setQuestActiveOrInactive(int active, int questid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_SET_QUEST_ACTIVE);
	stmt->setInt32(0, active);
	stmt->setInt32(1, questid);
	CharacterDatabase.Execute(stmt);
}

//Get Questdetails about a specific reported quest.
PreparedQueryResult CustomReportSystem::getReportedQuestDetails(int questid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
	stmt->setInt32(0, questid);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(stmt);

	
	if (!ergebnis) {
		return nullptr;
	}

	return ergebnis;
}

void CustomReportSystem::insertErrorMessageForQuest(std::string charactername, int guid, std::string accountname, int accountid, int questid, std::string error_message)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_ERROR_MESSAGE);
	stmt->setString(0, charactername);
	stmt->setInt32(1, guid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setInt32(4, questid);
	stmt->setString(5, error_message);
	CharacterDatabase.Execute(stmt);
}




//Returns if a Quest was already reported or not. If 0 = quest wasn´t reported. 1 = quest is already reported.
//RETURN VALUE IS BOOLEAN
bool CustomReportSystem::checkIfQuestIsAlreadyReported(int questid) {
	PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
	selreportquest->setInt32(0, questid);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

	if (!ergebnis) {
		return false;
	}

	return true;
}


void CustomReportSystem::insertQuestIntoForbiddenTable(int questid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_QUEST_IN_FORBIDDEN_TABLE);
	stmt->setInt32(0, questid);
	CharacterDatabase.Execute(stmt);
}

void CustomReportSystem::insertItemIntoForbiddenTable(int itemid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEM_IN_FORBIDDEN_TABLE);
	stmt->setInt32(0, itemid);
	CharacterDatabase.Execute(stmt);
}

bool CustomReportSystem::checkIfQuestisForbidden(int questid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_QUEST_FROM_FORBIDDEN_TABLE);
	stmt->setInt32(0, questid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}
	return true;
}

bool CustomReportSystem::checkIfItemisForbidden(int itemid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEM_FROM_FORBIDDEN_TABLE);
	stmt->setInt32(0, itemid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}
	return true;
}