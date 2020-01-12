#ifndef DEF_ACCOUNT_COUPON_CODE_H
#define DEF_ACCOUNT_COUPON_CODE_H

#include "World.h"
#include <string>

class TC_GAME_API AccountCouponCode {

private:
    uint32 m_ID;
    uint32 m_AccountID;
    std::vector<std::string> m_Codes;


public:
    AccountCouponCode(uint32 ID, uint32 AccountID, std::vector<std::string> Codes) {
        m_ID = ID;
        m_AccountID = AccountID;
        m_Codes = Codes;
    }

    typedef std::shared_ptr<AccountCouponCode> AccCode;

    uint32 ID() { return this->m_ID; };
    uint32 AccountID() { return this->m_AccountID; };
    std::vector<std::string> UsedCodes() { return this->m_Codes; };
    void AddUsedCode(std::string code) {
        if (std::find(m_Codes.begin(), m_Codes.end(), code) == m_Codes.end()) 
            m_Codes.push_back(code);
    }

    void Save();
};

#endif
