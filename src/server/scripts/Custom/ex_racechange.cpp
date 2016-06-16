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
#include "ItemPrototype.h"
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

class Race_Change_NPC : public CreatureScript
{
public:
	Race_Change_NPC() : CreatureScript("racechange") {  }

	void DBeintrag(Player* player, std::string grund){
		CharacterDatabase.PExecute("INSERT INTO firstnpc_log "
			"(grund,spieler, guid)"
			"VALUES ('%s', '%s', '%u')",
			grund, player->GetSession()->GetPlayerName(), player->GetGUID());
		return;

	}


	bool OnGossipHello(Player* player, Creature* creature)
	{
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie funktioniert das?", GOSSIP_SENDER_MAIN, 0);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Rassenwechsel Kosten: 500 Gold & 2 Frostmarken", GOSSIP_SENDER_MAIN,1);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktionswechsel Kosten: 500 Gold & 2 Frostmarken", GOSSIP_SENDER_MAIN, 2);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Fraktions & Rassenwechsel Kosten: 1000 Gold & 4 Frostmarken.", GOSSIP_SENDER_MAIN,3);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Rename Kosten: 500 Gold", GOSSIP_SENDER_MAIN, 4);
		player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
	}
    
	bool OnGossipSelect(Player* pPlayer, Creature* /*creature*/, uint32 sender, uint32 action){
		pPlayer->PlayerTalkClass->ClearMenus();
		if (sender != GOSSIP_SENDER_MAIN)
			return false;
		switch (action){

		case  0:
			
				pPlayer->GetGUID();
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("Einfach auswaehlen was du moechtest und dann reloggen.",
					pPlayer->GetName());
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
			break;
		case  1:
			if (pPlayer->HasItemCount(49426, 2) && pPlayer->HasEnoughMoney(500*GOLD)){
				pPlayer->DestroyItemCount(49426, 2, true, false);
				pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
				pPlayer->GetGUID();
				std::ostringstream ss;
				ss << "|cff54b5ffEin Rassenwechsel wurde durchgefuehrt von: |r " << ChatHandler(pPlayer->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				DBeintrag(pPlayer->GetSession()->GetPlayer(), "Rassenwechsel");
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
					pPlayer->GetName());
				pPlayer->ModifyMoney(-500*GOLD);
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
			}

			else{
				pPlayer->GetSession()->SendAreaTriggerMessage("Du hast nicht genug Frostmarken oder nicht Gold zum Wechseln. Komm wieder wenn du genug hast.");
				return true;
			}

			break;
		case  2:

			if (pPlayer->HasItemCount(49426, 2) && pPlayer->HasEnoughMoney(500 * GOLD)){
				pPlayer->DestroyItemCount(49426, 2, true);
				pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
				pPlayer->GetGUID();
				std::ostringstream ss;
				ss << "|cff54b5ffEin Fraktionswechsel wurde durchgefuehrt von: |r " << ChatHandler(pPlayer->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				DBeintrag(pPlayer->GetSession()->GetPlayer(), "Fraktionswechsel");
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
					pPlayer->GetName());
				pPlayer->ModifyMoney(-500 * GOLD);
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
			}


		else{
			pPlayer->GetSession()->SendAreaTriggerMessage("Du hast nicht genug Frostmarken oder nicht Gold zum Wechseln. Komm wieder wenn du genug hast.");
			return true;
		}

			break;


		case 3:
			if (pPlayer->HasItemCount(49426, 4) && pPlayer->HasEnoughMoney(1000 * GOLD)){
				pPlayer->DestroyItemCount(49426, 4, true, false);
				pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
				pPlayer->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
				
				pPlayer->GetGUID();
				std::ostringstream ss;
				DBeintrag(pPlayer->GetSession()->GetPlayer(), "Rassen und Fraktionswechsel");
				ss << "|cff54b5ffEin Rassen und Fraktionswechsel wurde durchgefuehrt von: |r " << ChatHandler(pPlayer->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
					pPlayer->GetName());
				pPlayer->ModifyMoney(-1000 * GOLD);
				pPlayer->PlayerTalkClass->SendCloseGossip();
				return true;
			}


			else{
				pPlayer->GetSession()->SendAreaTriggerMessage("Du hast nicht genug Frostmarken oder nicht Gold zum Wechseln. Komm wieder wenn du genug hast.");
				return true;
			}break;


		case 4:
			if (pPlayer->HasEnoughMoney(500 * GOLD)){
				pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
				pPlayer->ModifyMoney(-500 * GOLD);
				std::ostringstream ss;
				DBeintrag(pPlayer->GetSession()->GetPlayer(), "Namensaenderung");
				ss << "|cff54b5ffEine Namensaenderung wurde durchgefuehrt von : |r " << ChatHandler(pPlayer->GetSession()).GetNameLink();
				sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
				ChatHandler(pPlayer->GetSession()).PSendSysMessage("Bitte ausloggen um Aenderungen durchzufuehren.",
					pPlayer->GetName());
				return true;

			}

			else{
				pPlayer->GetSession()->SendAreaTriggerMessage("Du hast nicht genug Gold um deinen Namen zu aendern. Komm wieder wenn du genug hast.");
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