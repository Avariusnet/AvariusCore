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

#include <Custom\Logic\CustomCharacterSystem.h>

#define ANSWER_NOT_CORRECT "Your Answer is not correct! Try it again!"
#define ANSWER_ALREADY_ANSWERED "You´ve already answered this Question!"

class codenpc : public CreatureScript
{
 

public:
    codenpc() : CreatureScript("codenpc") { }
    
    void Belohnung(Player* player, std::string codes){
		CustomCharacterSystem * CharacterSystem  = 0;

	

		PreparedQueryResult ergebnis = CharacterSystem->getAntwortbyPlayerAntwort(codes);
		
		if (!ergebnis){
			player->GetSession()->SendNotification(ANSWER_NOT_CORRECT);
			return;
		}

		if (ergebnis){
			Field* felder = ergebnis->Fetch();
			uint32 questionid = felder[0].GetUInt32();
			uint32 belohnung = felder[1].GetUInt32();
			uint32 anzahl = felder[2].GetUInt32();

			PreparedStatement* check = CharacterDatabase.GetPreparedStatement(CHAR_SEL_BEANTWORTET);
			check->setInt32(0, player->GetSession()->GetAccountId());
			check->setInt32(1, questionid);
			PreparedQueryResult result = CharacterDatabase.Query(check);

			bool playerHasAlreadyAnswerQuestion = CharacterSystem->hasPlayerAlreadyAnswertheQuestion(player->GetSession()->GetAccountId(), questionid);

			if (result){
				player->GetSession()->SendNotification(ANSWER_ALREADY_ANSWERED);
				return;
			}

			CharacterSystem->addNewPlayerAnsweredQuestion(player->GetSession()->GetAccountId(), questionid);
			CharacterSystem->sendPlayerMail(belohnung, anzahl, "Congratulation", "Congratulation. Here is your Goodie for the correct Answer!", player->GetSession()->GetPlayer());
			
			return;
		}

    }
    
    
   
    bool OnGossipHello(Player *player, Creature* _creature)
    {
        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Please insert your Answer!" , GOSSIP_SENDER_MAIN, 2, "Type your answer: ", 0,true);
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