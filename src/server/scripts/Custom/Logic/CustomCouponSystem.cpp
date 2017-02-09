#include <Custom/Logic/CustomCouponSystem.h>


#include "ScriptPCH.h"
#include "CustomCouponSystem.h"


enum Belohnungen
{
	ASTRALER_KREDIT = 38186,
	FROSTMARKEN = 49426,
	TRIUMPHMARKEN = 47241,
	TITANSTAHLBARREN = 37663,
	SARONITBARREN = 36913,
	GOLDBARREN = 3577,
	EISENBARREN = 3575,
	URSARONIT = 49908,
	TRAUMSPLITTER = 34052,
	AKRTISCHERPELZ = 44128
};


void CustomCouponSystem::insertNewCouponCodeinDB(std::string code, int itemid, int itemquantity, int used, int useablequantity)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEMCODE);
	stmt->setString(0, code);
	stmt->setUInt32(1, itemid);
	stmt->setUInt32(2, itemquantity);
	stmt->setUInt32(3, used);
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
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODE);
	stmt->setString(0, couponcode);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return NULL;
	}

	return result;
}

bool CustomCouponSystem::hasPlayeralreadyUsedCode(std::string couponcode, int accountid)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODEACCOUNT);
	stmt->setString(0, couponcode);
	stmt->setInt32(1, accountid);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	return true;
}

bool CustomCouponSystem::isItemCodeStillValid(std::string couponcode)
{
	PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODE);
	stmt->setString(0, couponcode);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return false;
	}

	Field* ergebnis = result->Fetch();
	uint8 couponcodebenutzt = ergebnis[3].GetUInt8();
	uint32 couponcodebenutztbar = ergebnis[4].GetUInt32();

	if (couponcodebenutzt < couponcodebenutztbar) {
		return true;
	}
	
	return false;
	
}

void CustomCouponSystem::updateCouponCodeUsed(int used, std::string couponcode)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_ITEMCODEUSED);
	stmt->setInt32(0, used);
	stmt->setString(1, couponcode);
	CharacterDatabase.Execute(stmt);
}

int CustomCouponSystem::getFortuneItem()
{
	srand(time(NULL));
	int r = rand();
	
	if (r % 25 == 0) {
		int reward = CustomCouponSystem::getCouponRewardbyID(0);
		return reward;
	}

	if (r % 25 == 1) {
		int reward = CustomCouponSystem::getCouponRewardbyID(1);
		return reward;
	}

	if (r % 25 == 2) {
		int reward = CustomCouponSystem::getCouponRewardbyID(2);
		return reward;
	}

	if (r % 25 == 3) {
		int reward = CustomCouponSystem::getCouponRewardbyID(3);
		return reward;
	}

	if (r % 25 == 4) {
		int reward = CustomCouponSystem::getCouponRewardbyID(4);
		return reward;
	}

	if (r % 25 == 5) {
		int reward = CustomCouponSystem::getCouponRewardbyID(5);
		return reward;
	}

	if (r % 25 == 6) {
		int reward = CustomCouponSystem::getCouponRewardbyID(6);
		return reward;
	}

	if (r % 25 == 7) {
		int reward = CustomCouponSystem::getCouponRewardbyID(7);
		return reward;
	}

	if (r % 25 == 8) {
		int reward = CustomCouponSystem::getCouponRewardbyID(8);
		return reward;
	}

	if (r % 25 == 9) {
		int reward = CustomCouponSystem::getCouponRewardbyID(9);
		return reward;
	}

	if (r % 25 == 10) {
		int reward = CustomCouponSystem::getCouponRewardbyID(10);
		return reward;
	}

	if (r % 25 == 11) {
		int reward = CustomCouponSystem::getCouponRewardbyID(11);
		return reward;
	}

	if (r % 25 == 12) {
		int reward = CustomCouponSystem::getCouponRewardbyID(12);
		return reward;
	}

	if (r % 25 == 13) {
		int reward = CustomCouponSystem::getCouponRewardbyID(13);
		return reward;
	}

	if (r % 25 == 14) {
		int reward = CustomCouponSystem::getCouponRewardbyID(14);
		return reward;
	}

	if (r % 25 == 15) {
		int reward = CustomCouponSystem::getCouponRewardbyID(15);
		return reward;
	}

	if (r % 25 == 16) {
		int reward = CustomCouponSystem::getCouponRewardbyID(16);
		return reward;
	}

	if (r % 25 == 17) {
		int reward = CustomCouponSystem::getCouponRewardbyID(17);
		return reward;
	}

	if (r % 25 == 18) {
		int reward = CustomCouponSystem::getCouponRewardbyID(18);
		return reward;
	}

	if (r % 25 == 19) {
		int reward = CustomCouponSystem::getCouponRewardbyID(19);
		return reward;
	}

	if (r % 25 == 20) {
		int reward = CustomCouponSystem::getCouponRewardbyID(20);
		return reward;
	}

	if (r % 25 == 21) {
		int reward = CustomCouponSystem::getCouponRewardbyID(21);
		return reward;
	}

	if (r % 25 == 22) {
		int reward = CustomCouponSystem::getCouponRewardbyID(22);
		return reward;
	}

	if (r % 25 == 23) {
		int reward = CustomCouponSystem::getCouponRewardbyID(23);
		return reward;
	}

	if (r % 25 == 24) {
		int reward = CustomCouponSystem::getCouponRewardbyID(24);
		return reward;
	}

	

}

int CustomCouponSystem::getCouponRewardbyID(int modulo)
{
	PreparedStatement * stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_COUPON_REWARD);
	stmt->setInt32(0,modulo);
	PreparedQueryResult result = CharacterDatabase.Query(stmt);

	if (!result) {
		return 5263;
	}

	Field* ergebnis = result->Fetch();
	int itemid = ergebnis[0].GetInt32();

	return itemid;
}




