#ifndef _COUPON_HANDLER_H
#define _COUPON_HANDLER_H

#include <string>
#include "DatabaseEnv.h"
#include "Player.h"
#include "AccountCouponCode.h"
#include "CouponCode.h"

class CouponHandler {


public:
    static CouponHandler* instance();

    void LoadRewards();
    void LoadPlayerUsedCoupons();
    std::string Create(uint32 amount);
    std::string Create(uint32 amount, uint32 usableCount);
    std::string Create(uint32 itemID, uint32 amount, uint32 usableCount);
    bool RedeemCouponCode(std::string couponCode, Player* player);
    

private:

    uint32 RollItem();
    std::string CreateCode();
    AccountCouponCode::AccCode FindAccount(uint32 accountID);
    bool IsValid(std::string couponcode);
    bool IsValid(std::string couponcode, Player* player);
    CouponCode::CCode GetCoupon(std::string couponCode);

    std::vector<uint32> m_RewardsList;
    std::vector<CouponCode::CCode> m_CouponCodes;
    std::vector<AccountCouponCode::AccCode> m_AccountUsedCodes;
};


#define sCouponHandler CouponHandler::instance()


#endif
