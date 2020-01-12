#include "CouponHandler.h"
#include "Config.h"
#include "Chat.h"
#include "DatabaseEnv.h"
#include "PlayerLogHandler.h"
#include "CharacterSystemHandler.h"
#include "AccountCouponCode.h"
#include "CouponCode.h"
#include "ObjectMgr.h"


CouponHandler* CouponHandler::instance()
{
    static CouponHandler instance;
    return &instance;
}

void CouponHandler::LoadRewards()
{
    uint32 oldMSTime = getMSTime();
    PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_COUPON_REWARDS);
    PreparedQueryResult queryResult = CharacterDatabase.Query(stmt);

    if (queryResult) {
        do
        {
            Field* fields = queryResult->Fetch();
            uint32 itemID = fields[0].GetInt32();

            if (!sObjectMgr->GetItemTemplate(itemID)) {
                TC_LOG_ERROR("sql.sql", "Table `coupon_rewards` contains itemID: %u which could not be found in item template, skipped.", itemID);
                continue;
            }

            m_RewardsList.push_back(itemID);
        } while (queryResult->NextRow());
    }
    TC_LOG_INFO("server.loading", ">> Loaded %lu rewards from coupon_rewards in %u ms", m_RewardsList.size(), GetMSTimeDiffToNow(oldMSTime));
    return;
}

void CouponHandler::LoadPlayerUsedCoupons()
{
    uint32 oldMSTime = getMSTime();
    PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_COUPONT_CODE_ACCOUNTS);
    PreparedQueryResult queryResult = CharacterDatabase.Query(stmt);

    if (queryResult) {
        do
        {
            uint8 index = 0;
            Field* fields = queryResult->Fetch();
            uint32 ID = fields[index++].GetInt32();
            uint32 accountID = fields[index++].GetInt32();
            std::string code = fields[index++].GetString();

            AccountCouponCode::AccCode accountCodes = FindAccount(accountID);
            if (!accountCodes) {
                accountCodes = std::make_shared<AccountCouponCode>(ID, accountID, std::vector<std::string>{code});
                m_AccountUsedCodes.push_back(accountCodes);
            }
            else
                accountCodes->AddUsedCode(code);

        } while (queryResult->NextRow());
    }

    TC_LOG_INFO("server.loading", ">> Loaded %lu account coupon code(s) from coupon_codes_accounts in %u ms", m_AccountUsedCodes.size(), GetMSTimeDiffToNow(oldMSTime));
    return;
 }

std::string CouponHandler::Create(uint32 amount)
{
    std::string Code = CreateCode();
    uint32 ItemID = RollItem();
    CouponCode::CCode code = std::make_shared<CouponCode>(code, ItemID, amount, 0, 1);
    code->Save();
    m_CouponCodes.push_back(code);
    return Code;
}

std::string CouponHandler::Create(uint32 amount, uint32 usableCount)
{
    std::string Code = CreateCode();
    uint32 ItemID = RollItem();
    CouponCode::CCode code = std::make_shared<CouponCode>(code, ItemID, amount, 0, usableCount);
    code->Save();
    m_CouponCodes.push_back(code);
    return Code;
}

std::string CouponHandler::Create(uint32 itemID, uint32 amount, uint32 usableCount)
{
    std::string Code = CreateCode();
    if (!sObjectMgr->GetItemTemplate(itemID))
        return "";

    CouponCode::CCode code = std::make_shared<CouponCode>(code, itemID, amount, 0, usableCount);
    code->Save();
    m_CouponCodes.push_back(code);
    return Code;
}

bool CouponHandler::RedeemCouponCode(std::string couponCode, Player* player)
{

    CouponCode::CCode code = GetCoupon(couponCode);
    if (!code)
        return false;



    player->AddItem(code->ItemID, code->Amount);
    AccountCouponCode::AccCode accCode(new CapturableTown(townID, mapID, areaID, team, lastFaction, progress, blockTimer, linkedTown, capturable, lastTimeCaptured));


}

std::string CouponHandler::CreateCode()
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

AccountCouponCode::AccCode CouponHandler::FindAccount(uint32 accountID)
{
    ptrdiff_t pos = std::find_if(m_AccountUsedCodes.begin(), m_AccountUsedCodes.end(), [=](AccountCouponCode::AccCode& e) {return e->AccountID() == accountID; }) - m_AccountUsedCodes.begin();
    return ((unsigned)pos >= m_AccountUsedCodes.size()) ? nullptr : m_AccountUsedCodes.at(pos);
}


bool CouponHandler::IsValid(std::string couponCode, Player* player)
{
    ptrdiff_t pos = std::find_if(m_AccountUsedCodes.begin(), m_AccountUsedCodes.end(), [=](AccountCouponCode::AccCode& e) {return e->AccountID() == player->GetSession()->GetAccountId(); }) - m_AccountUsedCodes.begin();

    if ((unsigned)pos >= m_AccountUsedCodes.size())
        return false;

    AccountCouponCode::AccCode code = m_AccountUsedCodes.at[pos];

    if (!code)
        return false;
        
    return (std::find(code->UsedCodes().begin(), code->UsedCodes().end(), couponCode) != code->UsedCodes().end()) ? false : true;

}

CouponCode::CCode CouponHandler::GetCoupon(std::string couponCode)
{
    ptrdiff_t pos = std::find_if(m_CouponCodes.begin(), m_CouponCodes.end(), [=](CouponCode::CCode& e) {return e->Code() == couponCode; }) - m_CouponCodes.begin();
    return ((unsigned)pos >= m_AccountUsedCodes.size()) ? nullptr : m_CouponCodes.at(pos);
}

uint32 CouponHandler::RollItem()
{
	srand(time(NULL));
	int r = rand();
    uint32 ID = r % m_RewardsList.size();
    return (m_RewardsList.at[ID]) ? m_RewardsList.at[ID] : 5263;
}



