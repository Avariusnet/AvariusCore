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



class coupon : public CommandScript
{
public:
	coupon() : CommandScript("coupon") { }

	std::vector<ChatCommand> GetCommands()  const override
	{

		static std::vector<ChatCommand> coupontable =
		{

			{ "reedem", SEC_PLAYER, false, &HandleGutscheinCommand, "" },
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
		CustomGMLogic * GmLogic = 0;
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

	
		bool checkifitemisforbidden = CharacterSystem->checkIfItemisForbidden(itemid);

		if (checkifitemisforbidden) {

			std::string accountname = "";
			accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
			GmLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), " Try to generate a forbidden Coupon code");
			

			PreparedQueryResult result = GmLogic->selectGMPlayerCount(player->GetSession()->GetAccountId());
			if (result == NULL) {
				handler->PSendSysMessage("Debug: Result  = NULL reached!");
				GmLogic->addGMPlayerCount(player->GetSession()->GetAccountId());
				return true;
			}

			Field* fields = result->Fetch();
			int32 id = fields[0].GetInt32();
			int32 accountid = fields[1].GetInt32();
			int32 counter = fields[2].GetInt32();
			
			int newcounter = 0;
			newcounter = counter + 1;	

			TC_LOG_INFO("custom.coupon", "Debug: ID: %u", id);
			TC_LOG_INFO("custom.coupon", "Debug: AccountID: %u", accountid);
			TC_LOG_INFO("custom.coupon", "Debug: Counter: %u", counter);
			TC_LOG_INFO("custom.coupon", "Debug: Counter + 1: %u", newcounter);

			GmLogic->updateGMPlayerCount(newcounter, id);
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("Warning: GM should be a supporter not a cheater!");
			handler->PSendSysMessage("This incident has been logged in DB.");
			handler->PSendSysMessage("This is your %s Incident. Beware!",newcounter);
			handler->PSendSysMessage("##########################################################");
			return true;
		}


		std::string couponcode = "";
		couponcode = CouponSystem->createNewCouponCode();
		std::string itemname = "";
		itemname = WorldSystem->getItemNamebyItemId(itemid);

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

		Player *player = handler->GetSession()->GetPlayer();

		std::string couponCode = std::string((char*)args);

		if (couponCode == "")
		{
			player->GetSession()->SendNotification("Without Code we can´t send you a Reward!");
			return true;
		}

		if (couponCode == "GOLD") {
			return true;
		}


		//Check if Code does exist and is still valid!
		bool couponCodeStillValid = false;
		couponCodeStillValid = CouponSystem->isItemCodeStillValid(couponCode);
		/*if (couponCodeStillValid == NULL) {
			if (player->GetSession()->GetSecurity() >= 2) {
				handler->PSendSysMessage("Debug: Couponstillvalidvalue: %s", couponCodeStillValid);
			}
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("Coupon does not exist in DB.");
			handler->PSendSysMessage("Couponcode: %s", couponCode);
			handler->PSendSysMessage("Please enter a valid Code!");
			handler->PSendSysMessage("##########################################################");
			return true;
		}*/

		if (!couponCodeStillValid) {
			if (player->GetSession()->GetSecurity() >= 2) {
				handler->PSendSysMessage("Debug: Couponstillvalidvalue: %s", couponCodeStillValid);
			}
			handler->PSendSysMessage("##########################################################");
			handler->PSendSysMessage("Couponcode has reached maximum uses!");
			handler->PSendSysMessage("Couponcode: %s", couponCode);
			handler->PSendSysMessage("Sorry for that!");
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
		std::string code = fields[0].GetCString();
		uint32 belohnung = fields[1].GetUInt32();
		uint32 anzahl = fields[2].GetUInt32();
		uint8 benutzt = fields[3].GetUInt8();
		uint32 benutztbar = fields[4].GetUInt32();
		TC_LOG_INFO("custom.coupon", "Debug: Couponcode %s was used by Player %s", couponCode, player->GetSession()->GetPlayerName());
		CouponSystem->updateCouponCodeUsed(benutzt + 1, couponCode);
		CouponSystem->insertNewPlayerUsedCode(player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), couponCode);
		CharacterSystem->sendPlayerMailwithItem(belohnung, anzahl, "Congratulation", "Your Couponcode was valid. Here is your Reward! Kind Regards your Serverteam.", player->GetSession()->GetPlayer());
		handler->PSendSysMessage("##########################################################");
		handler->PSendSysMessage("Congratulation %s", player->GetSession()->GetPlayerName());
		handler->PSendSysMessage("Your Couponcode %s was valid!", couponCode);
		handler->PSendSysMessage("Please check your Mails");
		handler->PSendSysMessage("##########################################################");

		return true;

	}
		/*
		PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODEGES);
		stmt->setString(0, itemCode);
		PreparedQueryResult result = CharacterDatabase.Query(stmt);

		//QueryResult result = CharacterDatabase.PQuery("SELECT `code`, `belohnung`, `anzahl`, `benutzt`, `benutztbar` FROM `item_codes` WHERE `code` = '%s'", itemCode);


		if (result)
		{

			Field* fields = result->Fetch();
			std::string code = fields[0].GetCString();
			uint32 belohnung = fields[1].GetUInt32();
			uint32 anzahl = fields[2].GetUInt32();
			uint8 benutzt = fields[3].GetUInt8();
			uint32 benutztbar = fields[4].GetUInt32();

			QueryResult accvorhanden = CharacterDatabase.PQuery("SELECT `accid`,`code` FROM `item_codes_account` WHERE `accid` = '%u' AND code = '%s' ", player->GetSession()->GetAccountId(), code);

			if (!accvorhanden) {
				QueryResult itemid = WorldDatabase.PQuery("SELECT `entry` FROM `item_template` WHERE `entry` = '%u'", belohnung);

				if (!itemid) {
					player->GetSession()->SendNotification("Das Item scheint nicht zu existieren. Der Code wird daher abgelehnt");
					return true;
				}



				if (benutzt < benutztbar)
				{
					benutzt++;
					Item* item = Item::CreateItem(belohnung, anzahl);
					player->GetSession()->SendNotification("Dein Code wurde akzeptiert!");
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					item->SaveToDB(trans);
					MailDraft("Dein Gutscheincode", "Dein Code wurde erfolgreich eingeloest. Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team").AddItem(item)
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);

					CharacterDatabase.PExecute("UPDATE item_codes SET name = '%s' WHERE code = '%s'", player->GetName().c_str(), itemCode);
					CharacterDatabase.PExecute("UPDATE item_codes SET benutzt = '%u' WHERE code = '%s'", benutzt, itemCode);

					PreparedStatement* itemcodeaccount = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEMCODEACCOUNT);
					itemcodeaccount->setString(0, player->GetSession()->GetPlayerName());
					itemcodeaccount->setUInt32(1, player->GetSession()->GetAccountId());
					itemcodeaccount->setString(2, itemCode);
					CharacterDatabase.Execute(itemcodeaccount);

					//CharacterDatabase.PExecute("INSERT INTO item_codes_account (name,accid,code) Values('%s','%u','%s')", player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), itemCode);

					char msg[250];
					snprintf(msg, 250, "Dein Code wurde akzeptiert.");
					ChatHandler(player->GetSession()).PSendSysMessage(msg,
						player->GetName());
					return true;

				}
				else {
					char msg[250];
					snprintf(msg, 250, "Der Code hat keine weitere Aufladung und wird daher abgelehnt.");
					ChatHandler(player->GetSession()).PSendSysMessage(msg,
						player->GetName());
					return true;
				}
			}

			else {
				char msg[250];
				snprintf(msg, 250, "Du hast den Code bereits verwendet.");
				ChatHandler(player->GetSession()).PSendSysMessage(msg,
					player->GetName());
				return true;

			}
		}
		else {
			char msg[250];
			snprintf(msg, 250, "Der eingegebene Code exisitert nicht.");
			ChatHandler(player->GetSession()).PSendSysMessage(msg,
				player->GetName());
			return true;
		}
		return true;
	};
	*/

};

	
void AddSC_coupon()
{
	new coupon();
}