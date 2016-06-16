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

class seruc : public CreatureScript
{
public: seruc() : CreatureScript("seruc"){ }



		bool OnGossipHello(Player *pPlayer, Creature* _creature)
		{
			pPlayer->ADD_GOSSIP_ITEM(7, "Raid: Der Fall des verlorenen Herrschers", GOSSIP_SENDER_MAIN, 0);
			pPlayer->ADD_GOSSIP_ITEM(7, "Instanz", GOSSIP_SENDER_MAIN, 13);
			pPlayer->ADD_GOSSIP_ITEM(7, "Teleport zum PVP Areal", GOSSIP_SENDER_MAIN, 1);
			pPlayer->ADD_GOSSIP_ITEM(7, "Teleport zur Insel ", GOSSIP_SENDER_MAIN, 2);
			pPlayer->ADD_GOSSIP_ITEM(7, "Teleport zu Yasio ", GOSSIP_SENDER_MAIN, 3);
			pPlayer->ADD_GOSSIP_ITEM(7, "MMOwning Worldbosse", GOSSIP_SENDER_MAIN, 15);
			pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
			return true;
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
				pPlayer->ADD_GOSSIP_ITEM(7, "Was sind die MMO Bosse?", GOSSIP_SENDER_MAIN, 17);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Orrig [5-10 Spieler] ", GOSSIP_SENDER_MAIN, 4);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Exitares Schatten [7-15 Spieler] Nicht empfohlen!", GOSSIP_SENDER_MAIN, 5);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Die gequaelte Seele [5-15 Spieler]", GOSSIP_SENDER_MAIN, 6);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Kayoula [25-40 Spieler]", GOSSIP_SENDER_MAIN, 7);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Therakin [10-15 Spieler] Rework!", GOSSIP_SENDER_MAIN, 8);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Arcturus [5-10 Spieler] ", GOSSIP_SENDER_MAIN, 9);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Moon [25-40 Spieler]", GOSSIP_SENDER_MAIN, 10);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Maltyriun [5-10 Spieler]", GOSSIP_SENDER_MAIN, 11);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: LORDofDOOM [7-15 Spieler]", GOSSIP_SENDER_MAIN, 12);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Eonar [8-15 Spieler] Rework!", GOSSIP_SENDER_MAIN, 14);
				pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Tolreos [8-15 Spieler] Rework!", GOSSIP_SENDER_MAIN, 16);

				if (pPlayer->GetSession()->GetSecurity() >= 2){
					pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Anna [Testphase]", GOSSIP_SENDER_MAIN, 17);
					pPlayer->ADD_GOSSIP_ITEM(7, "Boss: Galadriel", GOSSIP_SENDER_MAIN, 18);
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
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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
						ChatHandler(pPlayer->GetSession()).PSendSysMessage("Du hast zu wenig Gold um dich zu porten!", pPlayer->GetName());
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