#include "CouponHandler.h"
#include "Chat.h"
#include "Player.h"
#include "WorldSession.h"
#include "Config.h"
#include "TeamMonitoringHandler.h"

class coupon : public CommandScript
{
public:
	coupon() : CommandScript("coupon") { }

	std::vector<ChatCommand> GetCommands()  const override
	{

		static std::vector<ChatCommand> coupontable =
		{

			{ "redeem", SEC_PLAYER, false, &HandleGutscheinCommand, "" },
			{ "generateRAF", SEC_ADMINISTRATOR, false, &CreateRAFCoupons, "" },
            { "generate", SEC_ADMINISTRATOR, false, &GenerateCoupons, ""},

		};

		static std::vector<ChatCommand> commandTable =
		{
			{ "coupon", SEC_ADMINISTRATOR , false, NULL, "" , coupontable },

		};

		return commandTable;
	}


    static bool GenerateCoupons(ChatHandler* handler, const char* args) {

        Player* player = handler->GetSession()->GetPlayer();

        char* itemchar = strtok((char*)args, " ");
        if (!itemchar) {
            player->GetSession()->SendNotification("Without ItemID command will not work!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            ChatHandler(player->GetSession()).PSendSysMessage("Without ItemID command will not work!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            return;
        }

        uint32 itemid = atoi((char*)itemchar);
        bool itemexist = WorldSystem->doesItemExistinDB(itemid);

        if (!itemexist) {
            player->GetSession()->SendNotification("Item not in DB!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            ChatHandler(player->GetSession()).PSendSysMessage("Item does not exist in DB!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            return;
        }

        char* itemanzahl = strtok(NULL, " ");
        if (!itemanzahl || !atoi(itemanzahl)) {
            player->GetSession()->SendNotification("Without Quantity command will not work !");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            ChatHandler(player->GetSession()).PSendSysMessage("Without Quantity command will not work !");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            return;
        }


        char* anzahlnutzer = strtok(NULL, " ");
        if (!anzahlnutzer) {
            player->GetSession()->SendNotification("Without usability the command will not work!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            ChatHandler(player->GetSession()).PSendSysMessage("Without usability the command will not work!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            return;
        }


        uint32 quantity = atoi((char*)itemanzahl);
        uint32 codeuseable = atoi((char*)anzahlnutzer);


        bool checkifitemisforbidden = ReportSystem->checkIfItemisForbidden(itemid);

        if (checkifitemisforbidden) {

            std::string accountname = "";
            accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
            GMLogic->addCompleteGMCountLogic(player->GetSession()->GetPlayer(), "Tries to create a forbidden Coupon!");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            ChatHandler(player->GetSession()).PSendSysMessage("Warning: GM should be a supporter not a cheater!");
            ChatHandler(player->GetSession()).PSendSysMessage("This incident has been logged in DB.");
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
            return;
        }


        std::string couponcode = "";
        couponcode = CouponSystem->createNewCouponCode();
        std::string itemname = "";
        std::string accountname = "";
        accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
        itemname = WorldSystem->getItemNamebyItemId(itemid);
        GMLogic->addGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "GM created CouponCode. More Details in gm_actions_coupon_details!");
        GMLogic->insertNewCouponGMLog(player->GetSession()->GetPlayerName(), player->GetGUID(), itemid, couponcode, quantity);
        CouponSystem->insertNewCouponCodeinDB(couponcode, itemid, quantity, 0, codeuseable);
        ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");
        ChatHandler(player->GetSession()).PSendSysMessage("The generated couponcode is: %s", couponcode);
        ChatHandler(player->GetSession()).PSendSysMessage("The ItemID is: %u", itemid);
        ChatHandler(player->GetSession()).PSendSysMessage("The Item Name is: %s", itemname);
        ChatHandler(player->GetSession()).PSendSysMessage("Coupon Useable: %u", codeuseable);
        ChatHandler(player->GetSession()).PSendSysMessage("##########################################################");

        return;
    }


	//Gibt dem Eventteam die Moeglichkeit Gutscheine fuer Spieler zu erstellen.
	static bool CreateRAFCoupons(ChatHandler* handler, const char* args)
	{
        int32 couponcost = sConfigMgr->GetIntDefault("Coupon.Generate.Cost", 5000);
        Player* player = handler->GetSession()->GetPlayer();

        if (!player)
            return;

        if (player->HasEnoughMoney(couponcost * GOLD)) {
            player->ModifyMoney(-couponcost * GOLD);
            std::string couponCode = "";
            couponCode = sCouponHandler->Create();
            int rewarditem = getFortuneItem();
            uint32 quantity = 1 + (std::rand() % (15 - 1 + 1));
            insertNewCouponCodeinDB(couponCode, rewarditem, quantity, 1, 1);
            insertNewPlayerUsedCode(player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), couponCode);
            CharacterSystem->sendPlayerMailwithItem(rewarditem, quantity, "Your CouponCode", "Here is your CouponCode\n Have fun with your Reward. \n Feel free to do all what you want with it!", player->GetSession()->GetPlayer());
            PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), logmessage);
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("Your Coupon was created and redeemed.",
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("You should have Mail right now.",
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("Have fun with it, %s", player->GetSession()->GetPlayerName(),
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
                player->GetName());

            return;
        }

        else {
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("Your Bag seems to be very empty! Come again if you had enoungh money to pay me!",
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("Actual Price is: %u", couponcost,
                player->GetName());
            ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
                player->GetName());
            return;
        }
        return;
		sCouponHandler->CouponGenerationperCommand(, args);
		return true;

	};



	static bool HandleGutscheinCommand(ChatHandler* handler, const char* args)
	{

        sCouponHandler->PlayerRedeemCommand(handler->GetSession()->GetPlayer(), args);
		return true;

	}

};

	
void AddSC_coupon()
{
	new coupon();
}
