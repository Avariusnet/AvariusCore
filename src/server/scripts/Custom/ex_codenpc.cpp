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






class codenpc : public CreatureScript
{
 

public:
    codenpc() : CreatureScript("codenpc") { }
    
    void Belohnung(Player* player, std::string codes){
        
		PreparedStatement* selantwort = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ANTWORTEN_NACH_ANTWORT);
		selantwort->setString(0, codes);
		PreparedQueryResult ergebnis = CharacterDatabase.Query(selantwort);
		
		if (!ergebnis){
			player->GetSession()->SendNotification("Deine Antwort ist nicht korrekt!");
			return;
		}

		if (ergebnis){
			Field* felder = ergebnis->Fetch();
			uint32 id = felder[0].GetUInt32();
			uint32 belohnung = felder[1].GetUInt32();
			uint32 anzahl = felder[2].GetUInt32();

			PreparedStatement* check = CharacterDatabase.GetPreparedStatement(CHAR_SEL_BEANTWORTET);
			check->setInt32(0, player->GetSession()->GetAccountId());
			check->setInt32(1, id);
			PreparedQueryResult result = CharacterDatabase.Query(check);

			if (result){
				player->GetSession()->SendNotification("Du hast die Frage schon beantwortet. Dies ist nur einmal pro Account moeglich!");
				return;
			}

			PreparedStatement* insertfrage = CharacterDatabase.GetPreparedStatement(CHAR_INS_BEANTWORTET);
			insertfrage->setInt32(0, player->GetSession()->GetAccountId());
			insertfrage->setInt32(1, id);
			CharacterDatabase.Execute(insertfrage);

			Item* item = Item::CreateItem(belohnung, anzahl);
			SQLTransaction trans = CharacterDatabase.BeginTransaction();
			item->SaveToDB(trans);
			MailDraft("Raetselbelohnung", "Du hast ein Raetsel geloest und hier ist deine Belohnung.").AddItem(item)
				.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
			CharacterDatabase.CommitTransaction(trans);
			player->GetSession()->SendNotification("Deine Antwort war korrekt. Deine Belohnung wurde zugesandt."); 
			return;
		}

    }
    
    
   
    bool OnGossipHello(Player *player, Creature* _creature)
    {
        player->ADD_GOSSIP_ITEM_EXTENDED(7, "Bitte gib deine Antwort ein!" , GOSSIP_SENDER_MAIN, 2, "Deine Antwort lautet: ", 0,true);
        player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
        return true;
    }
    
    
    bool OnGossipSelectCode(Player * player, Creature* /*creature*/, uint32 /*sender*/, uint32 action, const char* code){
        
        switch(action){
            
            
            case 2:
                {
                
                    std::string codes = code;
                
                    if(codes == "Easteregg"){
                        player->GetSession()->SendNotification("Viel Spass mit dem Easteregg");
                        return true;
                    }
                    
					Belohnung(player->GetSession()->GetPlayer(), codes);
                  
                    
                
                }break;
        
                return true;
        
            }
    
        return true;
    }
    
};


void AddSC_codenpc()
{
    new codenpc();
}