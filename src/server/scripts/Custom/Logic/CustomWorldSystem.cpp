
#include <Custom/Logic/CustomWorldSystem.h>



//Return a specific itemid if the id exist. IF NO ITEM EXIST VALUE = 0, VALUE != 0 ITEM EXIST
//RETURN VALUE INT32
int CustomWorldSystem::getItemID(int itemid) {
	PreparedStatement * itemquery = WorldDatabase.GetPreparedStatement(WORLD_SEL_ITEM_NR);
	itemquery->setUInt32(0, itemid);
	PreparedQueryResult ergebnis = WorldDatabase.Query(itemquery);

	if (!ergebnis) {
		return 0;
	}

	Field* itemnrfield = ergebnis->Fetch();
	int32 itemID = itemnrfield[0].GetInt32();

	return itemID;
}



//Return questid. If no quest found return value = 0
int CustomWorldSystem::getQuestIDbyName(std::string questname)
{

	PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
	stmt->setString(0, questname);
	PreparedQueryResult result = WorldDatabase.Query(stmt);

	if (!result) {
		return 0;
	}


	Field* questnr = result->Fetch();
	uint32 questid = questnr[0].GetInt32();
	return questid;
}

bool CustomWorldSystem::doesItemExistinDB(int itemid)
{
	PreparedStatement * itemquery = WorldDatabase.GetPreparedStatement(WORLD_SEL_ITEM_NR);
	itemquery->setUInt32(0, itemid);
	PreparedQueryResult ergebnis = WorldDatabase.Query(itemquery);

	if (!ergebnis) {
		return false;
	}
	
	return true;
}




//Return QuestName. If Error then return 0
std::string CustomWorldSystem::getQuestNamebyID(int questid)
{
	PreparedStatement* selquestbyid = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTNAME_BY_ID);
	selquestbyid->setInt32(0, questid);
	PreparedQueryResult result = WorldDatabase.Query(selquestbyid);

	if (!result) {
		return "0";
	}

	Field* questnamefield = result->Fetch();
	std::string questname = questnamefield[0].GetCString();

	return questname;
}



void CustomWorldSystem::setBossKillCounter(int /*counter*/, int /*bossid*/)
{

}

int CustomWorldSystem::getBossKillCounter(int /*bossid*/)
{
	return 0;
}
