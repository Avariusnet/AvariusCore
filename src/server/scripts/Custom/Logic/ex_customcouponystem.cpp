#include <Custom/Logic/CustomCouponSystem.h>


#include "ScriptPCH.h"
#include "CustomCouponSystem.h"

void CustomCouponSystem::insertNewCouponCodeinDB(std::string code, int itemid, int quantity, int used, int useablequantity)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_NOPLAYERITEMCODE);
	stmt->setString(0, code);
	stmt->setUInt32(1, itemid);
	stmt->setUInt32(2, quantity);
	stmt->setUInt32(3, 0);
	stmt->setUInt32(4, useablequantity);
	CharacterDatabase.Execute(stmt);

}

std::string CustomCouponSystem::createNewCouponCode()
{
	auto randchar = []() -> char
	{
		const char charset[] =
			"0123456789"
			"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			"abcdefghijklmnopqrstuvwxyz";
		const size_t max_index = (sizeof(charset) - 1);
		return charset[rand() % max_index];
	};
	std::string str(10, 0);
	std::generate_n(str.begin(), 10, randchar);


	return str;
}

void CustomCouponSystem::insertNewPlayerUsedCode(std::string charactername, int accountid, std::string couponcode)
{

	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEMCODEACCOUNT);
	stmt->setString(0, charactername);
	stmt->setUInt32(1, accountid);
	stmt->setString(2, couponcode);
	CharacterDatabase.Execute(stmt);
}

PreparedQueryResult CustomCouponSystem::getRequestedCodeData(std::string couponcode)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODEGES);
	stmt->setString(0, couponcode);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return NULL;
	}

	return result;
}



