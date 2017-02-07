#ifndef _CUSTOMCOUPONSYSTEM_H
#define _CUSTOMCOUPONSYSTEM_H

class CustomCouponSystem {
public:


	/*PrepareStatement(CHAR_SEL_ITEMCODEGES, "SELECT `code`, `belohnung`, `anzahl`, `benutzt`, `benutztbar` FROM `item_codes` WHERE `code` = ?", CONNECTION_SYNCH);
	PrepareStatement(CHAR_INS_ITEMCODEACCOUNT, "INSERT INTO item_codes_account (name,accid,code) Values(?,?,?)", CONNECTION_ASYNC);
	PrepareStatement(CHAR_INS_ITEMCODE, "INSERT INTO `item_codes` (code,belohnung,anzahl,benutzt,name,benutztbar) VALUES (?,?,?,?,?,?)", CONNECTION_ASYNC);
	PrepareStatement(CHAR_INS_NOPLAYERITEMCODE, "INSERT INTO `item_codes` (code,belohnung,anzahl,benutzt,benutztbar) VALUES (?,?,?,?,?)", CONNECTION_ASYNC);*/



	 void insertNewCouponCodeinDB(std::string code, int itemid, int quantity, int used, int useablequantity);
	 std::string createNewCouponCode();
	 void insertNewPlayerUsedCode(std::string charactername, int accountid, std::string couponcode);
	 PreparedQueryResult getRequestedCodeData(std::string couponcode);
	
	
};



#endif