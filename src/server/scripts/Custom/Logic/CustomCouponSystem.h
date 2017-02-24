#ifndef _CUSTOMCOUPONSYSTEM_H
#define _CUSTOMCOUPONSYSTEM_H

class CustomCouponSystem {
public:

	 void insertNewCouponCodeinDB(std::string code, int itemid, int itemquantity, int used, int useablequantity);
	 std::string createNewCouponCode();
	 void insertNewPlayerUsedCode(std::string charactername, int accountid, std::string couponcode);
	 PreparedQueryResult getRequestedCodeData(std::string couponcode);
	 bool hasPlayeralreadyUsedCode(std::string couponcode, int accountid);
	 bool isItemCodeStillValid(std::string couponcode);
	 void updateCouponCodeUsed(int used, std::string couponcode);
	 int getFortuneItem();
	 int getCouponRewardbyID(int modulo);

	 void playerRedeemCommand(Player * player, const char* args);
	 void couponGeneration(Player * player, const char* args);
	
};



#endif