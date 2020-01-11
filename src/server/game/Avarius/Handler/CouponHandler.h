#ifndef _COUPON_HANDLER_H
#define _COUPON_HANDLER_H

#include <string>
#include "DatabaseEnv.h"
#include "Player.h"

class CouponHandler {

private:
	std::string createNewCouponCode();
	void insertNewCouponCodeinDB(std::string code, int itemid, int itemquantity, int used, int useablequantity);
	bool isItemCodeStillValid(std::string couponcode);
	void updateCouponCodeUsed(int used, std::string couponcode);
	int getFortuneItem();
	int getCouponRewardbyID(int modulo);
	void insertNewPlayerUsedCode(std::string charactername, int accountid, std::string couponcode);
	PreparedQueryResult getRequestedCodeData(std::string couponcode);
	bool hasPlayeralreadyUsedCode(std::string couponcode, int accountid);

public:

	 
    static CouponHandler* instance();

	 void playerRedeemCommand(Player * player, const char* args);
	 void couponGenerationperCommand(Player * player, const char* args);
	 void playerCouponGenerationAndRedeeming(Player * player, std::string logmessage);
	 void playerCouponGerationForAFriend(Player * player, std::string logmessage);


};


#define sCouponHandler CouponHandler::instance()


#endif
