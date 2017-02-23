#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include <stdlib.h>
#include "GameEventMgr.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include "Bag.h"
#include "Common.h"
#include "Config.h"
#include "DatabaseEnv.h"
#include "DBCStructure.h"
#include "Define.h"
#include "Field.h"
#include "GameEventMgr.h"
#include "Item.h"
#include "Language.h"
#include "Log.h"
#include "ObjectGuid.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "QueryResult.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"
#include "Transaction.h"
#include "WorldSession.h"
#include <sstream>
#include <string>
#include <stdlib.h>
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomCharacterSystem.h>


enum Belohnungen
{
	CURRENCYITEM = 38186,
	COST = 1000
};


class vipvendor : public CreatureScript
{
public: vipvendor() : CreatureScript("vipvendor") { }


		bool OnGossipHello(Player *player, Creature* _creature)
		{
			//test if this is possible in Fucntion
			if (sConfigMgr->GetBoolDefault("Vip.Vendor", true)) {
				player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Help!", GOSSIP_SENDER_MAIN, 2, "", 0, false);
				player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "I want to buy some Tokens!", GOSSIP_SENDER_MAIN, 1 , "Amount of Tokens you want to buy: ", 0, true);
				player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;
			}


			else {
				_creature->SetPhaseMask(2, true);
				player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;
			}
		}


		bool OnGossipSelectCode(Player * player, Creature* creature, uint32 /*sender*/, uint32 action, const char* code) {

			switch (action) {
				
			case 1:
			{

				std::string eingabe = code;
				if (eingabe == "") {
					creature->Say("Without amount. No Trading!", LANG_UNIVERSAL, nullptr);
					return true;
				}


				CustomPlayerLog * PlayerLog = 0;
				CustomCharacterSystem * CharacterSystem = 0;
				int amount = (uint32)atoi(code);
				int32 gesgold = COST * GOLD;
				int32 overallcost = gesgold * amount;

				if (player->GetSession()->GetSecurity() >= 2) {
					ChatHandler(player->GetSession()).PSendSysMessage("Debug: gesgold: %u",gesgold,
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("Debug: amount: %u",amount,
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("Debug: overallcost: %u", overallcost,
						player->GetName());
				}

				if (player->HasEnoughMoney(overallcost)) {
					player->ModifyMoney(-overallcost);
					player->AddItem(CURRENCYITEM, amount);
					creature->Say("Here! Your Tokens are in your Bag!", LANG_UNIVERSAL, nullptr);
					std::string accountname = "";
					accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					PlayerLog->insertNewCurrencyLog(player->GetSession()->GetPlayerName(),player->GetGUID(),accountname, player->GetSession()->GetAccountId(), CURRENCYITEM,amount,"VIP_CURRENCY_BUY at VIP_VENDOR");
					PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "VIP_CURRENCY_BUY at VIP_VENDOR");
					ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("You have bought %u Tokens and payed %u Gold.", amount ,overallcost * GOLD,
						player->GetName());
					ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
						player->GetName());
					return true;
				}

				creature->Say("Not enough money to pay me!", LANG_UNIVERSAL, nullptr);
			
				return true;


			}break;

			case 2: {

			}break;

			return true;

			}

			return true;
		}

};





void AddSC_vipvendor()
{
	new vipvendor();
}