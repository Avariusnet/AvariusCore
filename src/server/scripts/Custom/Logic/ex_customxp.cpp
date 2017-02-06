#include <Custom/Logic/CustomXP.h>
#include <Custom/Logic/CustomCharacterSystem.h>



	

	void CustomXP::setCustomXPEntry(std::string charactername, int characterguid, int xpvalue)
	{
		PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_CUSTOM_XP);
		stmt->setString(0, charactername);
		stmt->setInt32(1, characterguid);
		stmt->setInt32(2, xpvalue);
		CharacterDatabase.Execute(stmt);
	}

	//Returns the name of the player, if an DB entry exist. If Not "0" is Returnvalue
	std::string CustomXP::getCustomXPExntry(int characterguid)
	{
		PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CUSTOM_XP);
		stmt->setInt32(0, characterguid);
		PreparedQueryResult stmtresult = CharacterDatabase.Query(stmt);

		if (!stmtresult) {
			return "0";
		}

		Field* stmtfield = stmtresult->Fetch();
		std::string charactername = stmtfield[0].GetString();

		return charactername;
	}

	//Update Custom XP Rate for a specified Player
	void CustomXP::updateCustomXPEntry(int xpvalue, int characterguid)
	{
		PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_CUSTOM_XP);
		stmt->setInt32(0, xpvalue);
		stmt->setInt32(1, characterguid);
		CharacterDatabase.Execute(stmt);
	}

	//Select Custom XP Rate from a specified Player
	int CustomXP::getCustomXPValue(int characterguid)
	{

		PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_CUSTOM_XP_VALUE);
		stmt->setInt32(0, characterguid);
		PreparedQueryResult stmtresult = CharacterDatabase.Query(stmt);

		if (!stmtresult) {
			return 1;
		}

		Field* stmtfield = stmtresult->Fetch();
		int xp_value = stmtfield[0].GetInt32();

		return xp_value;
	}


	

	


	



	

	

	
