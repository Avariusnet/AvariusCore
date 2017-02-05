#include "Custom\Logic\GMLogic.h"






//Insert a GM Log action, to control your GM´s. No Return Value. Log is found in Character DB , Tablename: "gm_action"
void GMLogic::addGMLog(std::string charactername, int characterid, std::string accountname, int accountid, std::string action) {
	//     PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_FIRSTLOG);
	//stmt->setString(0, "Eventteamgutschein");
	//stmt->setString(1, player->GetSession()->GetPlayerName());
	//stmt->setUInt32(2, player->GetGUID());
	//CharacterDatabase.Execute(stmt);


	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_GM_ACTION);
	stmt->setString(0, charactername);
	stmt->setInt32(1, characterid);
	stmt->setString(2, accountname);
	stmt->setInt32(3, accountid);
	stmt->setString(4, action);
	CharacterDatabase.Execute(stmt);
}
