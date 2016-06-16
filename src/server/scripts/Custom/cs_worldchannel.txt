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
#include "Chat.h"
 
#define FACTION_SPECIFIC 0
 
std::string GetNameLink(Player* player)
{
        std::string name = player->GetName();
        std::string color;
        switch(player->getClass())
        {
        case CLASS_DEATH_KNIGHT:
                color = "|cffC41F3B";
                break;
        case CLASS_DRUID:
                color = "|cffFF7D0A";
                break;
        case CLASS_HUNTER:
                color = "|cffABD473";
                break;
        case CLASS_MAGE:
                color = "|cff69CCF0";
                break;
        case CLASS_PALADIN:
                color = "|cffF58CBA";
                break;
        case CLASS_PRIEST:
                color = "|cffFFFFFF";
                break;
        case CLASS_ROGUE:
                color = "|cffFFF569";
                break;
        case CLASS_SHAMAN:
                color = "|cff0070DE";
                break;
        case CLASS_WARLOCK:
                color = "|cff9482C9";
                break;
        case CLASS_WARRIOR:
                color = "|cffC79C6E";
                break;
        }
        return "|Hplayer:"+name+"|h|cffFFFFFF["+color+name+"|cffFFFFFF]|h|r";
}
 
class cs_world_chat : public CommandScript
{
        public:
                cs_world_chat() : CommandScript("cs_world_chat"){}
 

		
        std::vector<ChatCommand> GetCommands() const
        {
                static std::vector<ChatCommand> commandTable =

                {
                        {"chat",        rbac::RBAC_PERM_COMMAND_WORLD_CHAT,             true,           &HandleWorldChatCommand,        "", NULL},
                        {"c",   rbac::RBAC_PERM_COMMAND_WORLD_CHAT,             true,           &HandleWorldChatCommand,        "", NULL},
                        {"world",       rbac::RBAC_PERM_COMMAND_WORLD_CHAT,             true,           &HandleWorldChatCommand,        "", NULL},
                        {"w",   rbac::RBAC_PERM_COMMAND_WORLD_CHAT,             true,           &HandleWorldChatCommand,        "", NULL},
                };
 


                return commandTable;

        }
 
        static bool HandleWorldChatCommand(ChatHandler * handler, const char * args)
        {
                if (!handler->GetSession()->GetPlayer()->CanSpeak())
                        return false;
                std::string temp = args;
 
                if (!args || temp.find_first_not_of(' ') == std::string::npos)
                        return false;
 
                std::string msg = "";
                Player * player = handler->GetSession()->GetPlayer();
 
                switch(player->GetSession()->GetSecurity())
                {
                        // Player
                        case SEC_PLAYER:
                                if (player->GetTeam() == ALLIANCE)
                                {
                                        msg += "|cff0000ff[Allianz] ";
                                        msg += GetNameLink(player);
                                        msg += " |cfffaeb00";
                                }
 
                                else
                                {
                                        msg += "|cffff0000[Horde] ";
                                        msg += GetNameLink(player);
                                        msg += " |cfffaeb00";
                                }
                                break;
                        // Moderator/trial
                        case SEC_MODERATOR:
                                msg += "|cffff8a00[Mod] ";
                                msg += GetNameLink(player);
                                msg += " |cfffaeb00";
                                break;
                        // GM
                        case SEC_GAMEMASTER:
                                msg += "|cff00ffff[GM] ";
                                msg += GetNameLink(player);
                                msg += " |cfffaeb00";
                                break;
                        // Admin
                        case SEC_ADMINISTRATOR:
                                msg += "|cfffa9900[Admin] ";
                                msg += GetNameLink(player);
                                msg += " |cfffaeb00";
                                break;
 
                }
                       
                msg += args;

                if (FACTION_SPECIFIC)
                {
                        SessionMap sessions = sWorld->GetAllSessions();
                        for (SessionMap::iterator itr = sessions.begin(); itr != sessions.end(); ++itr)
                                if (Player* plr = itr->second->GetPlayer())
                                        if (plr->GetTeam() == player->GetTeam())
                                                sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), plr);
                }
                else
                        sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), 0);  
 
                return true;
        }
};
 
void AddSC_cs_world_chat()
{
        new cs_world_chat();
}