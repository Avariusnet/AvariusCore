//
//  ex_commands.cpp
//  TrinityCore
//
//  Created by Raphael Kirchgäßner on 08/07/16.
//
//

#include <stdio.h>
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
#include "Transport.h"
#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"
#include "CreatureGroups.h"
#include "Language.h"
#include "TargetedMovementGenerator.h"
#include "CreatureAI.h"
#include "Player.h"
#include "Pet.h"
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

class ex_commands : public CommandScript
{
public:
    ex_commands() : CommandScript("ex_commands") { }
    
    std::vector<ChatCommand> GetCommands() const
    {
        
        static std::vector<ChatCommand> commandTable =
        {
            { "report", SEC_ADMINISTRATOR , false, &HandleReportCommand, "" },
        };
        
        return commandTable;
    }
    
	static void eintragen(std::string questName, Player * player){

		PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
		stmt->setString(0, questName);
		PreparedQueryResult result = WorldDatabase.Query(stmt);

		if (!result){
			player->GetSession()->SendNotification("Error beim Abfragen der Quest");
			return ;
		}

		Field* questnr = result->Fetch();
		uint32 questid = questnr[0].GetInt32();

		//CHECK IF QUEST WITH ID IS IN DB
		PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
		selreportquest->setInt32(0, questid);
		PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

		//NO Quest with Id in DB
		if (!ergebnis){
			PreparedStatement* insertnewquest = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
			insertnewquest->setInt32(0, questid);
			insertnewquest->setInt32(1, 1);
			insertnewquest->setInt32(2, 0);
			CharacterDatabase.Execute(insertnewquest);
			player->GetSession()->SendNotification("Die Quest wurde erfolgreich eingetragen");
			return ;
		}

		//FETCH DB DATA
		Field* report_quest = ergebnis->Fetch();
		uint32 questreportid = report_quest[0].GetInt32();
		uint32 anzahl = report_quest[1].GetInt32();
		uint32 aktiv = report_quest[2].GetInt32();


		//Update anzahl, und aktiv auf 1 setzen.
		if (anzahl == 5){
			PreparedStatement * updatequestaktiv = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_ACTIVE);
			updatequestaktiv->setInt32(0, anzahl + 1);
			updatequestaktiv->setInt32(1, 1);
			updatequestaktiv->setInt32(2, questreportid);
			CharacterDatabase.Execute(updatequestaktiv);


			const Quest* quest = sObjectMgr->GetQuestTemplate(questreportid);
			//TODO PLayer can complete and reward quest
			player->CanCompleteQuest(questreportid);
			player->CanRewardQuest(quest, false);
			player->GetSession()->SendNotification("Die Quest wurde erfolgreich reported und die Quest abgeschlossen.");
			return ;
		}

		//aktiv == 1, quest abschließen und counter um 1 erhöhen.
		if (aktiv == 1){
			PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
			updatequest->setInt32(0, anzahl + 1);
			updatequest->setInt32(1, questreportid);
			CharacterDatabase.Execute(updatequest);
			player->GetSession()->SendNotification("Die Quest wurde erfolgreich reportet und abgeschlossen.");
			return ;
		}


		//weder counter == 5 noch aktiv == 1
		PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
		updatequest->setInt32(0, anzahl + 1);
		updatequest->setInt32(1, questreportid);
		CharacterDatabase.Execute(updatequest);
		player->GetSession()->SendNotification("Quest erfolgreich reportet.");


		return ;

	};
	
    
    //report function. More than 5 reports makes a quest instant complete.
    static bool HandleReportCommand(ChatHandler* handler, const char* args)
    {
        
		

        Player* player = handler->GetSession()->GetPlayer();
        
        if (!*args)
            return false;
        
        uint32 questId = 0;
        
        if (args[0] == '[')                                        // [name] manual form
        {
            char const* questNameStr = strtok((char*)args, "]");
            
            if (questNameStr && questNameStr[0])
            {
				eintragen(questNameStr, player->GetSession()->GetPlayer());

                std::string questName = questNameStr+1;
                WorldDatabase.EscapeString(questName);
               
				eintragen(questName, player->GetSession()->GetPlayer());
                
            }

			 {
				 char const* id = handler->extractKeyFromLink((char*)args, "Hitem");
				 if (!id)
					 return false;
				 questId = atoul(id);

				 PreparedStatement* questnamebyid = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTNAME_BY_ID);
				 questnamebyid->setInt32(0, questId);
				 PreparedQueryResult nameresult = WorldDatabase.Query(questnamebyid);

				 if (!nameresult){
					 player->GetSession()->SendNotification("Fehler beim Abfragen des Questnamens ueber die ID");
					 return true;
				 }

				 Field* questnamenfeld = nameresult->Fetch();
				 std::string questNamebyid = questnamenfeld[0].GetCString();

				 eintragen(questNamebyid, player->GetSession()->GetPlayer());

				 
			 }

            return true;
        }
        
        
                
                
        return true;
        
    };
    
    
    
    
};

void AddSC_ex_commands()
{
    new ex_commands();
}
