
#ifndef _REPORTSYSTEM_H
#define _REPORTSYSTEM_H


class ReportSystem {
public:


	bool checkIfQuestIsAlreadyReported(int questid);
	bool checkIfPlayerHasAlreadyReportedQuest(int accountid, int questid);
	void addNewPlayerReportInDB(std::string playername, std::string guildname, int guid, int accountid, int questid);
	void addNewQuestReportInDB(std::string questname, int questid, int quantity, int active);
	void UpdateQuantityQuestReportInDB(int quantity, int questid);
	void setQuestCompleteActive(int active, int questid);
	PreparedQueryResult getReportedQuestDetails(int questid);

};



#endif