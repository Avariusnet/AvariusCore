
#ifndef _REPORTSYSTEM_H
#define _REPORTSYSTEM_H


class ReportSystem {
public:


	/*	PrepareStatement(CHAR_INS_REPORT_QUEST, "Insert into `reported_quest` (questname, questid, anzahl, aktiv) VALUES (?,?,?,?)", CONNECTION_ASYNC);
	PrepareStatement(CHAR_SEL_REPORT_QUEST, "Select questid, anzahl, aktiv from reported_quest where questid = ?", CONNECTION_SYNCH);
	PrepareStatement(CHAR_UPD_REPORT_QUEST_ACTIVE, "Update reported_quest SET anzahl = ? , aktiv = ? where questid = ?", CONNECTION_ASYNC);
	PrepareStatement(CHAR_UPD_REPORT_QUEST, "Update reported_quest SET anzahl = ? where questid = ?", CONNECTION_ASYNC);
	PrepareStatement(CHAR_UPD_REPORT_QUEST_DEACTIVATE, "Update reported_quest SET aktiv = ? where questid = ?", CONNECTION_ASYNC);
	PrepareStatement(CHAR_INS_PLAYER_REPORT_QUEST, "Insert into reported_quest_player (playername,guildname,guid,accid, reported_quest_id) Values (?,?,?,?,?)", CONNECTION_ASYNC);
	PrepareStatement(CHAR_SEL_PLAYER_REPORT_QUEST, "SELECT accid from reported_quest_player where accid = ? and reported_quest_id = ?", CONNECTION_SYNCH);
	*/


	bool checkIfQuestIsAlreadyReported(int questid);
	bool checkIfPlayerHasAlreadyReportedQuest(int accountid, int questid);
	void addNewPlayerReportInDB(std::string playername, std::string guildname, int guid, int accountid, int questid);
	void addNewQuestReportInDB(std::string questname, int questid, int quantity, int active);
	void UpdateQuantityQuestReportInDB(int quantity, int questid);
	void setQuestCompleteActive(int quantity ,int active, int questid);

};



#endif