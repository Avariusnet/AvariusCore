#include "Custom\Logic\ReportSystem.h"




bool ReportSystem::checkIfPlayerHasAlreadyReportedQuest(int accountid, int questid)
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

void ReportSystem::addNewPlayerReportInDB(std::string playername, std::string guildname, int guid, int accountid, int questid)
{
}



void ReportSystem::addNewQuestReportInDB(std::string questname, int questid, int quantity, int active)
{
}

//Update quantity of a speicifc questid
void ReportSystem::UpdateQuantityQuestReportInDB(int quantity, int questid)
{

	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
	stmt->setInt32(0, quantity + 1);
	stmt->setInt32(1, questid);
	CharacterDatabase.Execute(stmt);
}

//Activate or Deactivate a reported Quest with specific questid
void ReportSystem::setQuestCompleteActive(int quantity,int active, int questid)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_ACTIVE);
	stmt->setInt32(0, quantity + 1);
	stmt->setInt32(1, active);
	stmt->setInt32(2, questid);
	CharacterDatabase.Execute(stmt);
}



//Returns if a Quest was already reported or not. If 0 = quest wasn´t reported. 1 = quest is already reported.
//RETURN VALUE IS BOOLEAN
bool ReportSystem::checkIfQuestIsAlreadyReported(int questid) {
	PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
	selreportquest->setInt32(0, questid);
	PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

	if (!ergebnis) {
		return false;
	}

	return true;
}