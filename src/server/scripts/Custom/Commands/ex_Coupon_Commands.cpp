#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Common.h"
#include "Player.h"
#include "WorldSession.h"
#include "Language.h"
#include "Log.h"
#include "SpellAuras.h"
#include "World.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "Config.h"
#include <iostream>
#include <iterator>
#include <vector>
#include <random>
#include <algorithm>

#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"
#include <Custom/Logic/CustomWorldSystem.h>
#include <Custom/Logic/CustomCouponSystem.h>
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>


class coupon : public CommandScript
{
public:
	coupon() : CommandScript("coupon") { }

	std::vector<ChatCommand> GetCommands()  const override
	{

		static std::vector<ChatCommand> coupontable =
		{

			{ "redeem", SEC_PLAYER, false, &HandleGutscheinCommand, "" },
			{ "generate", SEC_ADMINISTRATOR, false, &HandlegutscheinerstellenCommand, "" }

		};

		static std::vector<ChatCommand> commandTable =
		{
			{ "coupon", SEC_ADMINISTRATOR , false, NULL, "" , coupontable },

		};

		return commandTable;
	}



	

	//Gibt dem Eventteam die Moeglichkeit Gutscheine fuer Spieler zu erstellen.
	static bool HandlegutscheinerstellenCommand(ChatHandler* handler, const char* args)
	{
		CustomWorldSystem * WorldSystem = 0;
		CustomCouponSystem * CouponSystem = 0;
		CustomReportSystem * ReportSystem = 0;
		CustomGMLogic * GMLogic = 0;
		CustomCharacterSystem * CharacterSystem = 0;
		Player* player = handler->GetSession()->GetPlayer();
		TC_LOG_INFO("custom.coupon", "Generating Coupon!");

		char* itemchar = strtok((char*)args, " ");
		if (!itemchar) {
			player->GetSession()->SendNotification("Ohne ItemID geht das leider nicht!");
			return false;
		}

		uint32 itemid = atoi((char*)itemchar);
		bool itemexist = WorldSystem->doesItemExistinDB(itemid);

		if (!itemexist) {
			player->GetSession()->SendNotification("Item not in DB!");
			return true;
		}

		char* itemanzahl = strtok(NULL, " ");
		if (!itemanzahl || !atoi(itemanzahl)) {
			player->GetSession()->SendNotification("Ohne Anzahl geht das leider nicht!");
			return false;
		}


		char* anzahlnutzer = strtok(NULL, " ");
		if (!anzahlnutzer) {
			player->GetSession()->SendNotification("Ohne Anzahl wie oft der Code eingesetzt werden kann, geht das nicht!");
			return false;
		}


		uint32 quantity = atoi((char*)itemanzahl);
		uint32 codeuseable = atoi((char*)anzahlnutzer);

	
		bool checkifitemisforbidden = ReportSystem->checkIfItemisForbidden(itemid);

		if (checkifitemisforbidden) {

			std::string accountname = "";
			accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					

			PreparedQueryResult result = GMLogic->selectGMPlayerCount(player->GetSession()->GetAccountId());
			if (result == NULL) {
				GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer(), "Tries to create a forbidden Coupon!");
				handler->PSendSysMessage("##########################################################");
				handler->PSendSysMessage("Warning: GM should be a supporter not a cheater!");
				handler->PSendSysMessage("This incident has been logged in DB.");
				handler->PSendSysMessage("This is your first Incident. Beware!");
				handler->PSendSysMessage("##########################################################");
				return true;
			}

			Field* fields = result->Fetch();
			//int32 id = fields[0].GetInt32();
			//int32 accountid = fields[1].GetInt32();
			int32 counter = fields[2].GetInt32();
			
			int newcounter = 0;
			newcounter = counter + 1;	

			GMLogic->addCompleteGMCountLogic(player->GetSession()->GetAccountId(), player->GetSession()->GetPlayer(), "Tries to create a forbidden Coupon!");
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("Warning: GM should be a supporter not a cheater!");
			handler->PSendSysMessage("This incident has been logged in DB.");
			handler->PSendSysMessage("This is your %u Incident. Beware!",newcounter);
			handler->PSendSysMessage("##########################################################");
			return true;
		}


		std::string couponcode = "";
		couponcode = CouponSystem->createNewCouponCode();
		std::string itemname = "";
		std::string accountname = "";
		accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
		itemname = WorldSystem->getItemNamebyItemId(itemid);
		GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(),accountname,player->GetSession()->GetAccountId(),"GM created CouponCode. More Details in gm_actions_coupon_details!");
		GMLogic->insertNewCouponGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), itemid,couponcode, quantity);
		CouponSystem->insertNewCouponCodeinDB(couponcode, itemid, quantity, 0, codeuseable);
		handler->PSendSysMessage("##########################################################");
		handler->PSendSysMessage("The generated couponcode is: %s", couponcode);
		handler->PSendSysMessage("The ItemID is: %u", itemid);
		handler->PSendSysMessage("The Item Name is: %s", itemname);
		handler->PSendSysMessage("Coupon Useable: %u", codeuseable);
		handler->PSendSysMessage("##########################################################");

		return true;

	};



	static bool HandleGutscheinCommand(ChatHandler* handler, const char* args)
	{

		CustomWorldSystem * WorldSystem = 0;
		CustomCouponSystem * CouponSystem = 0;
		CustomGMLogic * GmLogic = 0;
		CustomCharacterSystem * CharacterSystem = 0;
		CustomPlayerLog* PlayerLog = 0;

		Player *player = handler->GetSession()->GetPlayer();

		std::string couponCode = std::string((char*)args);

		if (couponCode == "")
		{
			player->GetSession()->SendNotification("Without Code we cannot send you a Reward!");
			return true;
		}

		if (couponCode == "GOLD") {
			return true;
		}


		//Check if Code does exist and is still valid!
		bool couponCodeStillValid = false;
		couponCodeStillValid = CouponSystem->isItemCodeStillValid(couponCode);
	

		if (!couponCodeStillValid) {
			if (player->GetSession()->GetSecurity() >= 2) {
				handler->PSendSysMessage("Debug: Couponstillvalidvalue: %s", couponCodeStillValid);
			}
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("Couponcode is invalid or has reached maximum uses!");
			handler->PSendSysMessage("Couponcode: %s", couponCode);
			handler->PSendSysMessage("Please check your Couponcode %s", player->GetSession()->GetPlayerName());
			handler->PSendSysMessage("If you type the correct Couponcode the Couponcodecharges are empty! Sorry for that!");
			handler->PSendSysMessage("##########################################################");
			return true;
		}


		//Check if Player used Code already
		//"SELECT accid, code from item_codes_account where code = ? and accid = ?"
		bool hasPlayeralreadyUsedCode = false;
		hasPlayeralreadyUsedCode = CouponSystem->hasPlayeralreadyUsedCode(couponCode,player->GetSession()->GetAccountId());
		if (player->GetSession()->GetSecurity() >= 2) {
			handler->PSendSysMessage("Debug: HasPLayerUsedcode %s", hasPlayeralreadyUsedCode);
			handler->PSendSysMessage("Debug: Couponcode %s", couponCode);
			handler->PSendSysMessage("Debug: AccountID %u", player->GetSession()->GetAccountId());
		}

		if (hasPlayeralreadyUsedCode) {
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("You have already used this Coupon: %s", couponCode);
			handler->PSendSysMessage("##########################################################");
			return true;
		}


		PreparedQueryResult result = CouponSystem->getRequestedCodeData(couponCode);
		
		Field* fields = result->Fetch();
		//std::string code = fields[0].GetCString();
		uint32 belohnung = fields[1].GetUInt32();
		uint32 anzahl = fields[2].GetUInt32();
		uint8 benutzt = fields[3].GetUInt8();
		//uint32 benutztbar = fields[4].GetUInt32();
		CouponSystem->updateCouponCodeUsed(benutzt + 1, couponCode);
		CouponSystem->insertNewPlayerUsedCode(player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), couponCode);
		CharacterSystem->sendPlayerMailwithItem(belohnung, anzahl, "Congratulation", "Your Couponcode was valid. \nHere is your Reward! \nKind Regards your Serverteam.", player->GetSession()->GetPlayer());
		handler->PSendSysMessage("##########################################################");
		handler->PSendSysMessage("Congratulation %s!", player->GetSession()->GetPlayerName());
		handler->PSendSysMessage("Your Couponcode %s was valid!", couponCode);
		handler->PSendSysMessage("Please check your Mails %s!",player->GetSession()->GetPlayerName());
		handler->PSendSysMessage("##########################################################");

		std::string accountname = "";
		accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
		PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Coupon reedem.");

		return true;

	}

};

	
void AddSC_coupon()
{
	new coupon();
}