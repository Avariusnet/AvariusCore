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


class supportnpc : public CreatureScript
{
public:
		supportnpc() : CreatureScript("supportnpc") { }
		
    void erklaerung(Player* player, std::string hilfe){
        
        ChatHandler(player->GetSession()).PSendSysMessage(hilfe.c_str(), player->GetName());
        player->PlayerTalkClass->SendCloseGossip();
        std::ostringstream ss;
        ss << hilfe;
        player->GetSession()->SendAreaTriggerMessage(ss.str().c_str());
        return;
        
    }
    
    
		bool OnGossipHello(Player* player, Creature* creature)
        {
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gibt es eine Erstaustattung?", GOSSIP_SENDER_MAIN, 0);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gibt es einen Gildentransfer?", GOSSIP_SENDER_MAIN, 7);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie kann ich einen GM erreichen?", GOSSIP_SENDER_MAIN, 1);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der Questcompleter hat mir nicht alle Items zugesendet. Was tun?", GOSSIP_SENDER_MAIN, 2);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Ich habe einen Fehler gefunden. Was tun?", GOSSIP_SENDER_MAIN, 3);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gibt es hier Crossfaction?", GOSSIP_SENDER_MAIN, 4);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie schreibe ich im Worldchat?", GOSSIP_SENDER_MAIN, 5);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Die Rampoquestreihe funktioniert bei mir nicht.", GOSSIP_SENDER_MAIN, 6);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie startet der Contentpatch?", GOSSIP_SENDER_MAIN, 8);
        player->ADD_GOSSIP_ITEM(7, "Wo kann ich Eventquests abgeben?", GOSSIP_SENDER_MAIN, 9);
		player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
        }
	
		bool OnGossipSelect(Player * pPlayer, Creature * /*creature*/, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
				case 0:
				{
					
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Ja, es gibt eine Erstaustattung. In jedem Startgebiet steht der entsprechende NPC. Es darf und kann nur der erste Charakter ausgestattet werden.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Ja in den Startgebieten. Naehere Informationen auf der HP oder im Chatfenster.");
					return true;
                }break;

				case 1:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Einen GM erreicht ihr ueber das Ticketsystem. Jedoch koennt ihr auch den MMOwning Launcher benutzen, sowie eine PN an einen GM auf der Homepage schreiben.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Per Ticket, auf der Homepage, ueber den Launcher, oder ueber ein PN");
					return true;
                }break;

				case 2:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Das ist uns bekannt. Der Questcompleter verschickt nicht immer alle Questitems. Ist die Quest normal abschliessbar wird es hier keine Erstattung geben. Ein Zuruecktreten vom Completen kann auch nicht erfolgen. Weitere Informationen gibt es auf der Homepage.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Das ist bekannt und wird nicht erstattet. Genauere Informationen auf der Homepage.");
					return true;
                }break;

				case 3:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Hast du einen Fehler gefunden, melde dich bitte ueber den Bugtracker. Da Entwickler nicht auf dem Liveserver spielen, lesen sie keine Tickets. Im Bugtracker koennt ihr den Bearbeitungszustand eurer Tickets jederzeit nachverfolgen.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Melde dich am besten ueber den Bugtracker. Entwickler werden keine Tickets lesen, da sie nicht auf dem Liveserver spielen.");
					return true;
                }break;

				case 4:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Crossfaction spielen ist auf MMOwning nicht moeglich. Wir haben uns bewusst dagegen entschieden. Da wir einen pvp-orientierten Server stellen ist Crossfaction nicht moeglich.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Crossfaction spielen ist auf MMOwning nicht moeglich. Wir haben uns bewusst dagegen entschieden.");
					return true;
                }break;

				case 5:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Oeffne dein Chatfenster und schreibe /join Horde bzw. /join Allianz um dem Fraktionschat beizutreten.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Oeffne dein Chatfenster und gib /join Horde bzw. /join Allianz ein.");
					return true;
                }break;

				case 6:
				{
					pPlayer->GetGUID();
					ChatHandler(pPlayer->GetSession()).PSendSysMessage("Die komplette Rampoquestreihe ist per Questcompleter abschliessbar. Bitte nutze diesen auch bevor du ein Ticket eroeffnest.", pPlayer->GetName());
					pPlayer->PlayerTalkClass->SendCloseGossip();
					pPlayer->GetSession()->SendAreaTriggerMessage("Die Rampoquestreihe ist komplett per Questcompleter abschliessbar.");
					return true;
                }break;
                    
                
                case 7:
                {
                    pPlayer->GetGUID();
                    ChatHandler(pPlayer->GetSession()).PSendSysMessage("Einen 1:1 Gildentransfer gibt es nicht. Eine Aufwertung fuer neue Gilden ab 25 Spieler mit 251er Gear ist jedoch moeglich.", pPlayer->GetName());
                    pPlayer->PlayerTalkClass->SendCloseGossip();
                    pPlayer->GetSession()->SendAreaTriggerMessage("Einen 1:1 Transfer gibt es nicht. Aber eine Aufwertung fuer Gilden. Naehere Informationen gibt es auf der Homepage.");
                    return true;
                }break;

                
                case 8:
                {
                    erklaerung(pPlayer->GetSession()->GetPlayer(),"Der Contentpatch startet ab Level 80 ueber einen Drop bei den Endbosse in allen Instanzen von Nordend oder ueber 2 Quests beim Wandervolk.");
                }break;
                    
                case 9:
                {
                    erklaerung(pPlayer->GetSession()->GetPlayer(), "Die speziellen Eventquests koennen nur bei den Eventquestgebern /nehmern abgegeben werden. Bitte gedulde dich daher, bis das Event wieder aktiv wird.");
                }
				

				return true;
			};
			return true;
		}
};


void AddSC_supportnpc()
{
	new supportnpc();
}
