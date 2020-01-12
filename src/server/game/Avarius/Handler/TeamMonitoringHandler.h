
#ifndef _TEAM_MONITORING_HANDLER_H
#define _TEAM_MONITORING_HANDLER_H

class TeamMonitoringHandler {

private:
	void AddGMPlayerCount(int accountid);
	void UpdateGMPlayerCount(int counter, int accountid);
	int GetGMPlayerCount(int accountid);
	PreparedQueryResult selectGMPlayerCount(int accountid);
	int selectMaxCountAutobroadcastID(int realmid);

public:

    TeamMonitoringHandler() {};
    ~TeamMonitoringHandler() {};

    static TeamMonitoringHandler* instance();
	
	void InsertNewAutobroadCast(Player* player,const char* args);
	void InsertNewCouponGMLog(std::string charactername, int guid,int itemid, std::string couponcode, int quantity);
	void AddCompleteGMCountLogic(Player* player, std::string logmessage);	
	void AddGMLog(std::string charactername, int characterid, std::string accountname, int accountid, std::string action);
	
};

#define sTeamMonitoringHandler TeamMonitoringHandler::instance()

#endif
