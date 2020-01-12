#include "AccountCouponCode.h"


void AccountCouponCode::Save() {
    uint8 index = 0;
    SQLTransaction trans = CharacterDatabase.BeginTransaction();
    PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_COUPON_CODE_ACCOUNT);
    stmt->setString(index++, this->m_Code);
    stmt->setUInt32(index++, this->m_ItemID);
    stmt->setUInt32(index++, this->m_Amount);
    stmt->setUInt32(index++, this->m_Used);
    stmt->setUInt32(index++, this->m_UsableCount);
    trans->Append(stmt);
    CharacterDatabase.CommitTransaction(trans);
}
