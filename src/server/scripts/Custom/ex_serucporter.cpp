#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include <stdlib.h>
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

#define LESSMONEY "Not enough money!"


class seruc : public CreatureScript
{
public: seruc() : CreatureScript("seruc"){ }



		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			if (sConfigMgr->GetBoolDefault("Teleport.NPC", true)) {
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Raid: Fallen Hero", GOSSIP_SENDER_MAIN, 0, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Instance", GOSSIP_SENDER_MAIN, 13, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Teleport to PVP Areal", GOSSIP_SENDER_MAIN, 1, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Teleport to Isle of Freedom ", GOSSIP_SENDER_MAIN, 2, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Teleport to Klee ", GOSSIP_SENDER_MAIN, 3, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Worldbosses", GOSSIP_SENDER_MAIN, 15, "", 0, false);
				pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;
			}
			
			else {
				_creature->SetPhaseMask(2, true);
				pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
				return true;	
			}
		}


		bool OnGossipSelect(Player * pPlayer, Creature * pCreature, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
				/*RAID*/
			case 0: {
				if (pPlayer->GetSession()->GetSecurity() == 3){
					pPlayer->TeleportTo(169, -393.26, 2972.93, 92.85, 5.94);
					return true;
				}

				else {
					std::ostringstream ss;
					pPlayer->GetGUID();
					pPlayer->Whisper("Wende dich bitte an die Entwickler wenn du mehr Informationen haben moechtest.", LANG_UNIVERSAL, pPlayer, true);
					ss << "|cff54b5ff|r " << ChatHandler(pPlayer->GetSession()).GetNameLink() << "|cff54b5ff hat sich in den gesperrten Raid geportet. Der Raid ist noch geschlossen. Wenn Ihr mehr Informationen erhalten wollt, wendet Euch bitte an den zustaendigen Entwickler|r |cff54b5ff!|r";
					sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
					return true;
				}
				
				
				return true;
			}break;

			case 15:
			{
				

				pPlayer->PlayerTalkClass->ClearMenus();
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Tell me more about the Worldbosses!", GOSSIP_SENDER_MAIN, 17, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Orrig [5-10 Players] ", GOSSIP_SENDER_MAIN, 4, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Exitares Shadow [7-15 Players] Not recommended!", GOSSIP_SENDER_MAIN, 5, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Die gequaelte Seele [5-15 Players]", GOSSIP_SENDER_MAIN, 6, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Kayoula [25-40 Players]", GOSSIP_SENDER_MAIN, 7, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Therakin [10-15 Players] Rework!", GOSSIP_SENDER_MAIN, 8, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Arcturus [5-10 Players] ", GOSSIP_SENDER_MAIN, 9, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Moon [25-40 Players]", GOSSIP_SENDER_MAIN, 10, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Maltyriun [5-10 Players]", GOSSIP_SENDER_MAIN, 11, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: LORDofDOOM [7-15 Players]", GOSSIP_SENDER_MAIN, 12, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Eonar [8-15 Players] Rework!", GOSSIP_SENDER_MAIN, 14, "", 0, false);
				pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Boss: Tolreos [8-15 Players] Rework!", GOSSIP_SENDER_MAIN, 16, "", 0, false);

				if (pPlayer->GetSession()->GetSecurity() >= 2){
					pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Boss: Anna [Testphase]", GOSSIP_SENDER_MAIN, 17, "", 0, false);
					pPlayer->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Boss: Galadriel", GOSSIP_SENDER_MAIN, 18, "", 0, false);
				}

				pPlayer->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
				return true;
			}
				/*PVP*/
			case 1: {
				if (pPlayer->HasEnoughMoney(200000)){
					pPlayer->GetGUID();
					pPlayer->TeleportTo(0, -793.67, 1565.25, 19.88, 3.25);
					pPlayer->ModifyMoney(-200000);
					return true;
				}
				else {
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					return true;
				}
					
			}break;
				
				
				/*INSEL*/
				case 2: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(0, -9773, 2126.72, 15.40, 3.88);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;

			    
						/*YASIO*/
				case 3: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(571, 5728.79, 608.62, 618.59, 5.60);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;




						/*ORRIG*/
				case 4: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -2902.55, -1259.97, 121.88, 3.28);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}

				}break;




						/*EXI*/
				case 5: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -480.42, 3326.65, 286.07, 4.69);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;





						/*GEQUÄLTE*/
				case 6: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -250.27, 3081.07, 96.45, 3.10);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;


						/*KAYOULA*/
				case 7: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -1221.52, -2432.34, 112.95, 1.00);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;



						/*Theriakin*/
				case 8: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, 3617.89, 4050.67, 92.00, 3.50);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;



						/*ARC*/
				case 9: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -1743.87, -854.50, 121.70, 2.06);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;



						/*MOON*/
				case 10: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -2872.38, -1386.17, 118.51, 2.60);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;


						 /*MALTYRIUN*/
				case 11: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -4385.68, -754.82, 120.89, 0.63);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;




						 /*LORDOFDOOM*/
				case 12: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -2710.73, -2722.46, 127.87, 0.42);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;

					/*INSTANZ*/
				case 13: {
					if (pPlayer->GetSession()->GetSecurity() == 3){
						pPlayer->TeleportTo(169, -393.26, 2972.93, 92.85, 5.94);
						return true;
					}
					else {
						std::ostringstream ss;
						pPlayer->GetGUID();
						ss << "|cff54b5ff|r " << ChatHandler(pPlayer->GetSession()).GetNameLink() << "|cff54b5ff hat sich in die gesperrte Instanz geportet. Diese ist noch geschlossen. Wenn ihr mehr Informationen erhalten wollt, wendet Euch bitte an den zustaendigen Entwickler|r |cff54b5ff!|r";
						sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
						return true;
					}
					return true;
				}break;

					/*Tyranium*/
				case 14: {
					if (pPlayer->HasEnoughMoney(200000)){
					pPlayer->GetGUID();
					pPlayer->TeleportTo(169, -4367.24, -1477.58, 92.00, 0.21);
					pPlayer->ModifyMoney(-200000);
					return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;

					/*Tolreos*/
				case 16: {
					if (pPlayer->HasEnoughMoney(200000)){
						pPlayer->GetGUID();
						pPlayer->TeleportTo(169, -3655.76, -1052.01, 126.75, 3.38);
						pPlayer->ModifyMoney(-200000);
						return true;
					}

					else {
						pPlayer->GetGUID();
						ChatHandler(pPlayer->GetSession()).PSendSysMessage(LESSMONEY, pPlayer->GetName());
						pPlayer->PlayerTalkClass->SendCloseGossip();
						return true;
					}
				}break;

				case 17: {
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Die MMO-Bosse sind dafuer gemacht worden, eine neue Herausforderung zu sein. Es wird Loot verteilt, der entsprechend dem Aufwand verteilt wird. Jeder Boss hat mehrere Loottables die per Zufall ausgewaehlt werden. Die Bosse sind nicht dazu da, etwaige Instanzen oder Raids zu ersetzen.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					return true;
				}break;

			}
			return true;
		}

};



void AddSC_seruc()
{
	new seruc();
}