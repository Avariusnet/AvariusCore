#ifndef DEF_COUPON_CODE_H
#define DEF_COUPON_CODE_H

#include "World.h"
#include <string>

class TC_GAME_API CouponCode {

private:
    uint32 m_ID;
    std::string m_Code;
    uint32 m_ItemID;
    uint32 m_Amount;
    uint32 m_Used;
    uint32 m_UsableCount;


public:
    CouponCode(uint32 ID, std::string Code, uint32 ItemID, uint32 Amount, uint32 Used, uint32 UsableCount) {
        m_ID = ID;
        m_Code = Code;
        m_ItemID = ItemID;
        m_Amount = Amount;
        m_Used = Used;
        m_UsableCount = UsableCount;
    }

    typedef std::shared_ptr<CouponCode> CCode;

    uint32 ID() { return this->m_ID; };
    std::string Code() { return this->m_Code; };
    uint32 ItemID() { return this->m_ItemID; };
    uint32 Amount() { return this->m_Amount; };
    uint32 Used() { return this->Used; };
    uint32 UsableCount() { return this->UsableCount; };
    uint32 RemainingActivations() { return this->m_UsableCount - this->m_Used; };

    void Save();

  


};

#endif
