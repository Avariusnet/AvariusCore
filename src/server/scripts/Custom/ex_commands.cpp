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
#include "logic.h"

class ex_commands : public CommandScript
{
public:
    ex_commands() : CommandScript("ex_commands") { }
    
    std::vector<ChatCommand> GetCommands() const
    {
		static std::vector<ChatCommand> bugTable =
		{
			{ "report", SEC_ADMINISTRATOR, false, &HandleReportCommand, "" },
			{ "deactivate", SEC_ADMINISTRATOR, false, &HandleDeactivateCommand, "" },
			{ "test", SEC_ADMINISTRATOR, false, &HandleDeactivateCommand, "" },
		};


        static std::vector<ChatCommand> commandTable =
        {
            { "bug", SEC_ADMINISTRATOR , false, &HandleReportCommand, "" ,bugTable},		
        };
        
        return commandTable;
    }
	
	
	
	static bool checkplayerreport(Player* player, int questid){

		PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYER_REPORT_QUEST);
		stmt->setInt32(0, player->GetGUID());
		stmt->setInt32(1, questid);
		PreparedQueryResult result = CharacterDatabase.Query(stmt);

		if (!result){
			
			return true;
		}

		player->GetSession()->SendNotification("Du hast die Quest schon einmal reported.");
		return false;

	}
    
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
                std::string questName = questNameStr+1;
                WorldDatabase.EscapeString(questName);
                
                PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTID_BY_NAME);
                stmt->setString(0, questName);
                PreparedQueryResult result = WorldDatabase.Query(stmt);

                if(!result){
                    player->GetSession()->SendNotification("Error beim Abfragen der Quest");
                    return true;
                }
                

				
		
                Field* questnr = result->Fetch();
                uint32 questid = questnr[0].GetInt32();
                
				bool status = checkplayerreport(player->GetSession()->GetPlayer(), questid);

				if (!status){

					PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
					insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
					insertnewplayer->setInt32(1, player->GetGUID());
					insertnewplayer->setInt32(2, questid);
					CharacterDatabase.Execute(insertnewplayer);
					player->GetSession()->SendNotification("Spieler erfolgreich eingetragen");
					return false;
				}

                //CHECK IF QUEST WITH ID IS IN DB
                PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
                selreportquest->setInt32(0,questid);
                PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);
                
                //NO Quest with Id in DB
                if(!ergebnis){
                    PreparedStatement* insertnewquest = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
					insertnewquest->setString(0, questName);
					insertnewquest->setInt32(1,questid);
                    insertnewquest->setInt32(2,1);
                    insertnewquest->setInt32(3, 0);
                    CharacterDatabase.Execute(insertnewquest);
                    player->GetSession()->SendNotification("Die Quest wurde erfolgreich eingetragen");
                    return true;
                }
                
                //FETCH DB DATA
				

				
                Field* report_quest = ergebnis->Fetch();
                uint32 questreportid = report_quest[0].GetInt32();
                uint32 anzahl = report_quest[1].GetInt32();
                uint32 aktiv = report_quest[2].GetInt32();
                
                
                //Update anzahl, und aktiv auf 1 setzen.
                if(anzahl == 5){
                    PreparedStatement * updatequestaktiv = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST_ACTIVE);
                    updatequestaktiv->setInt32(0,anzahl+1);
                    updatequestaktiv->setInt32(1,1);
                    updatequestaktiv->setInt32(2,questreportid);
                    CharacterDatabase.Execute(updatequestaktiv);
                    
                    
                    const Quest* quest = sObjectMgr->GetQuestTemplate(questreportid);
                    //TODO PLayer can complete and reward quest
                    player->CanCompleteQuest(questreportid);
                    player->CanRewardQuest(quest, false);
                    player->GetSession()->SendNotification("Die Quest wurde erfolgreich reported und die Quest abgeschlossen.");
                    return true;
                }
                
                //aktiv == 1, quest abschließen und counter um 1 erhöhen.
                if(aktiv == 1){
                    PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
                    updatequest->setInt32(0,anzahl+1);
                    updatequest->setInt32(1,questreportid);
                    CharacterDatabase.Execute(updatequest);
                    player->GetSession()->SendNotification("Die Quest wurde erfolgreich reportet und abgeschlossen.");
                    return true;
                }
                
                
                //weder counter == 5 noch aktiv == 1
                PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
                updatequest->setInt32(0,anzahl+1);
                updatequest->setInt32(1,questreportid);
                CharacterDatabase.Execute(updatequest);
                player->GetSession()->SendNotification("Quest erfolgreich reportet.");
                
                
                return true;
                
            }

            return true;
        }
        
        
		else                                                    // item_id or [name] Shift-click form |color|Hitem:item_id:0:0:0|h[name]|h|r
		{
			char const* id = handler->extractKeyFromLink((char*)args, "Hquest");
			if (!id)
				return false;
			questId = atoul(id);
			int32 questid = questId;
			PreparedStatement* selquestbyid = WorldDatabase.GetPreparedStatement(WORLD_SEL_QUESTNAME_BY_ID);
			selquestbyid->setInt32(0, questId);
			PreparedQueryResult resultes = WorldDatabase.Query(selquestbyid);

			if (!resultes){
				player->GetSession()->SendNotification("Keine Quest gefunden");
				return true;
			}

			Field* questbyname = resultes->Fetch();
			std::string questname = questbyname[0].GetCString();


			PreparedStatement * selreportquest = CharacterDatabase.GetPreparedStatement(CHAR_SEL_REPORT_QUEST);
			selreportquest->setInt32(0, questid);
			PreparedQueryResult ergebnis = CharacterDatabase.Query(selreportquest);

			bool status = checkplayerreport(player->GetSession()->GetPlayer(), questid);

			if (!status){
				PreparedStatement* insertnewplayer = CharacterDatabase.GetPreparedStatement(CHAR_INS_PLAYER_REPORT_QUEST);
				insertnewplayer->setString(0, player->GetSession()->GetPlayerName());
				insertnewplayer->setInt32(1, player->GetGUID());
				insertnewplayer->setInt32(2, questid);
				CharacterDatabase.Execute(insertnewplayer);
				
				player->GetSession()->SendNotification("Spieler erfolgreich eingetragen");
				return false;
			}

			//NO Quest with Id in DB
			if (!ergebnis){
				PreparedStatement* insertnewquest = CharacterDatabase.GetPreparedStatement(CHAR_INS_REPORT_QUEST);
				insertnewquest->setString(0, questname);
				insertnewquest->setInt32(1, questid);
				insertnewquest->setInt32(2, 1);
				insertnewquest->setInt32(3, 0);
				CharacterDatabase.Execute(insertnewquest);
				player->GetSession()->SendNotification("Die Quest wurde erfolgreich eingetragen");
				return true;
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
				return true;
			}

			//aktiv == 1, quest abschließen und counter um 1 erhöhen.
			if (aktiv == 1){
				PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
				updatequest->setInt32(0, anzahl + 1);
				updatequest->setInt32(1, questreportid);
				CharacterDatabase.Execute(updatequest);
				player->GetSession()->SendNotification("Die Quest wurde erfolgreich reportet und abgeschlossen.");
				return true;
			}


			//weder counter == 5 noch aktiv == 1
			PreparedStatement * updatequest = CharacterDatabase.GetPreparedStatement(CHAR_UPD_REPORT_QUEST);
			updatequest->setInt32(0, anzahl + 1);
			updatequest->setInt32(1, questreportid);
			CharacterDatabase.Execute(updatequest);
			player->GetSession()->SendNotification("Quest erfolgreich reportet.");


			return true;

		}
                
        return true;
        
    };
    
	static bool HandleDeactivateCommand(ChatHandler* handler, const char* args){

	};
    
	static bool HandleTestCommand(ChatHandler* handler, const char* args){

		Player *chr = handler->GetSession()->GetPlayer();

		char* questidstring = strtok((char*)args, " ");

		uint32 questid = (uint32)atoi(questidstring);

		if (!questid)
			return false;

		Field* anzahl = getreportedquest(questid);
		uint32 anzahl1 = anzahl[0].GetInt32();
			
		chr->GetSession()->SendNotification(anzahl1);
	};
    
};

void AddSC_ex_commands()
{
    new ex_commands();
}
