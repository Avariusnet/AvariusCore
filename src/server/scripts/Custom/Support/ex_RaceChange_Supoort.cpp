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

#define NOT_ENOUGH_CREDITS "You have not enough Credits to pay me!"
#define PLEASE_LOGOUT "Please Logout now!"
#define RACE_CHANGE "Race Change"
#define NAME_CHANGE "Name Change"
#define FACTION_CHANGE "Faction Change"
#define FACTION_AND_RACE_CHANGE "Faction and Race Change"
#define HELP "Just click on what you like to change and Logout."


enum Costs {
	ASTRALER_CREDIT = 38186
};

class Race_Change_NPC : public CreatureScript
{
public:
	Race_Change_NPC() : CreatureScript("racechange") {  }

	void DBeintrag(Player* player, std::string reason){
		CustomPlayerLog * PlayerLog = 0;
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), reason);
		return;

	}


	bool OnGossipHello(Player* player, Creature* creature)
	{
		
		if (sConfigMgr->GetBoolDefault("Race.Change", true)) {
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_CHAT, "How does this work?", GOSSIP_SENDER_MAIN, 0, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_CHAT, "Racechange Cost: Astrale Credits", GOSSIP_SENDER_MAIN, 1, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_CHAT, "Factionchange Cost:  Astrale Credits", GOSSIP_SENDER_MAIN, 2, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_CHAT, "Race & Factionchange Cost: Astrale Credits", GOSSIP_SENDER_MAIN, 3, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_CHAT, "Rename Kosten: Astrale Credits", GOSSIP_SENDER_MAIN, 4, "", 0, false);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}
		else {
			creature->SetPhaseMask(2, true);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}
		
	}
    
	bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action){
		player->PlayerTalkClass->ClearMenus();
		if (sender != GOSSIP_SENDER_MAIN)
			return false;
		switch (action){

		case  0:
			
				player->GetGUID();
				ChatHandler(player->GetSession()).PSendSysMessage(HELP,
					player->GetName());
				player->PlayerTalkClass->SendCloseGossip();
				return true;
			break;

			//RaceChange
		case  1:
			if (player->HasItemCount(ASTRALER_CREDIT, 2) && player->HasEnoughMoney(500*GOLD)){
				player->DestroyItemCount(49426, 2, true, false);
				player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
				player->GetGUID();
				std::ostringstream ss;
				ss << "|cff54b5ffEin Rassenwechsel wurde durchgefuehrt von: |r " << ChatHandler(player->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				DBeintrag(player->GetSession()->GetPlayer(), RACE_CHANGE);
				ChatHandler(player->GetSession()).PSendSysMessage(PLEASE_LOGOUT,
					player->GetName());
				player->ModifyMoney(-500*GOLD);
				player->PlayerTalkClass->SendCloseGossip();
				return true;
			}

			else{
				creature->Say(NOT_ENOUGH_CREDITS, LANG_UNIVERSAL,nullptr);
				return true;
			}

			break;


			//Factionchange
		case  2:

			if (player->HasItemCount(ASTRALER_CREDIT, 2)){
				player->DestroyItemCount(49426, 2, true);
				player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
				player->GetGUID();
				std::ostringstream ss;
				ss << "|cff54b5ffEin Fraktionswechsel wurde durchgefuehrt von: |r " << ChatHandler(player->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				DBeintrag(player->GetSession()->GetPlayer(), FACTION_CHANGE);
				ChatHandler(player->GetSession()).PSendSysMessage(PLEASE_LOGOUT,
					player->GetName());
				player->ModifyMoney(-500 * GOLD);
				player->PlayerTalkClass->SendCloseGossip();
				return true;
			}


		else{
			creature->Say(NOT_ENOUGH_CREDITS, LANG_UNIVERSAL, nullptr);
			return true;
		}

			break;

			//Faction and Race
		case 3:
			if (player->HasItemCount(ASTRALER_CREDIT, 4)){
				player->DestroyItemCount(49426, 4, true, false);
				player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
				player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
				
				player->GetGUID();
				std::ostringstream ss;
				DBeintrag(player->GetSession()->GetPlayer(), FACTION_AND_RACE_CHANGE);
				ss << "|cff54b5ffEin Rassen und Fraktionswechsel wurde durchgefuehrt von: |r " << ChatHandler(player->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				ChatHandler(player->GetSession()).PSendSysMessage(PLEASE_LOGOUT,
					player->GetName());
				player->ModifyMoney(-1000 * GOLD);
				player->PlayerTalkClass->SendCloseGossip();
				return true;
			}


			else{
				creature->Say(NOT_ENOUGH_CREDITS, LANG_UNIVERSAL, nullptr);
				return true;
			}break;

			//RaceChange
		case 4:
			if (player->HasEnoughMoney(500 * GOLD)){
				player->SetAtLoginFlag(AT_LOGIN_RENAME);
				player->ModifyMoney(-500 * GOLD);
				std::ostringstream ss;
				DBeintrag(player->GetSession()->GetPlayer(), NAME_CHANGE);
				ss << "|cff54b5ffEine Namensaenderung wurde durchgefuehrt von : |r " << ChatHandler(player->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				ChatHandler(player->GetSession()).PSendSysMessage(PLEASE_LOGOUT,
					player->GetName());
				return true;

			}

			else{
				creature->Say(NOT_ENOUGH_CREDITS, LANG_UNIVERSAL, nullptr);
				return true;
			}break;

		}
		return true;
	}
};

void AddSC_Race_Change_NPC()
{
	new Race_Change_NPC();
}