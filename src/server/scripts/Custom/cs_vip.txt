/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
Name: vip_commandscript
%Complete: 100
Comment: All vip related commands
Category: commandscripts
EndScriptData */

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

class vip_commandscript : public CommandScript
{
public:
    vip_commandscript() : CommandScript("vip_commandscript") { }

	std::vector<ChatCommand> GetCommands() const
    {
		static std::vector<ChatCommand> vipCommandTable =
        {
            { "add",            SEC_ADMINISTRATOR,  false, &HandleVipAddCommand,              "" },		
            { "debuff",         SEC_ADMINISTRATOR,  false, &HandleVipDebuffCommand,             "" },
            { "map",            SEC_ADMINISTRATOR,  false, &HandleVipMapCommand,                "" },
            { "bank",           SEC_ADMINISTRATOR,  false, &HandleVipBankCommand,               "" },
            { "repair",         SEC_ADMINISTRATOR,  false, &HandleVipRepairCommand,             "" },
          //{ "auction",        SEC_ADMINISTRATOR,  false, &HandleVipAuctionCommand,            ""},
            { "resettalents",   SEC_ADMINISTRATOR,  false, &HandleVipResetTalentsCommand,       "" },
            { "whispers",       SEC_ADMINISTRATOR,  false, &HandleVipWhispersCommand,           "" },
            { "taxi",           SEC_ADMINISTRATOR,  false, &HandleVipTaxiCommand,               ""},
            { "home",           SEC_ADMINISTRATOR,  false, &HandleVipHomeCommand,               "" },
            { "capital",        SEC_ADMINISTRATOR,  false, &HandleVipCapitalCommand,            "" },
            { "status",         SEC_ADMINISTRATOR,  false, &HandleVipStatusCommand,             ""},
			{"insel",			SEC_PLAYER,			false, &HandleInselCommand,					"" },				
            //{ "",         		SEC_ADMINISTRATOR,  true,  &HandleVipCommand,		            "" },			

        };
        
        
		static std::vector<ChatCommand> commandTable =
        {
            { "elite",            SEC_ADMINISTRATOR,  false, NULL,                                "", vipCommandTable },
        };
        return commandTable;
    }

	

bool static HandleVipAddCommand(ChatHandler* handler, char const* args)
{

    Player *chr = handler->GetSession()->GetPlayer();

	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}	
	
	if (!*args)
		handler->SendSysMessage(VIP_COMMANDS);
		return false;

	///- Get the command line arguments
	char* account = strtok ((char*)args, " ");
	char* duration = strtok (NULL," ");

	if (!account || !duration || !atoi(duration))
		return false;

	std::string accountName = account;
	uint32 durationSecs = atoi(duration) * 86400;
	std::string gm = handler->GetSession()->GetPlayerName();

	if (!AccountMgr::normalizeString(accountName))
	{
		handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
		handler->SetSentErrorMessage(true);
		return false;
	}

	uint32 targetAccountId = AccountMgr::GetId(accountName);
	if (!targetAccountId)
	{
		handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
		handler->SetSentErrorMessage(true);
		return false;
	}

	/// can set vip only for target with less security
	/// This is also reject self apply in fact
	if (handler->HasLowerSecurityAccount(NULL, targetAccountId, true))
		return false;

	QueryResult resultLogin = LoginDatabase.PQuery("SELECT active FROM account_premium WHERE id = %u AND active = 1", targetAccountId);
	if (resultLogin)
	{
		LoginDatabase.PExecute("UPDATE account_premium "
			"SET gm = '%s', unsetdate = unsetdate + %u "
			"WHERE id = %u", gm.c_str(), durationSecs, targetAccountId);

		handler->PSendSysMessage("Elite geupdated.");

		return true;
	}

	LoginDatabase.PExecute("DELETE FROM account_premium WHERE id = %u", targetAccountId);

	LoginDatabase.PExecute("INSERT INTO account_premium "
		"(id, gm, setdate, unsetdate, active) "
		"VALUES ('%u', '%s', UNIX_TIMESTAMP(), UNIX_TIMESTAMP() + %u, 1)",
		targetAccountId, gm.c_str(), durationSecs);

	handler->PSendSysMessage("Der Account ist jetzt als Elite Account geflaggt.");


	return true;
}

	
	
static bool HandleVipDebuffCommand(ChatHandler* handler, const char* /*args*/)
{   
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}	
    
    handler->GetSession()->GetPlayer()->RemoveAurasDueToSpell(15007);
    handler->GetSession()->GetPlayer()->RemoveAurasDueToSpell(26013);

    return true;
}

static bool HandleVipMapCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}		

    handler->PSendSysMessage(LANG_YOU_SET_EXPLORE_ALL, handler->GetNameLink(chr).c_str());
    for (uint8 i=0; i<PLAYER_EXPLORED_ZONES_SIZE; ++i)
    {
        handler->GetSession()->GetPlayer()->SetFlag(PLAYER_EXPLORED_ZONES_1+i,0xFFFFFFFF); 
    }

    return true;
}

static bool HandleVipBankCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			

    handler->GetSession()->SendShowBank(handler->GetSession()->GetPlayer()->GetGUID());

    return true;
}

static bool HandleVipRepairCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			
    
    // Repair items
    handler->GetSession()->GetPlayer()->DurabilityRepairAll(false, 0, false);

    handler->PSendSysMessage(LANG_YOUR_ITEMS_REPAIRED, handler->GetNameLink(handler->GetSession()->GetPlayer()).c_str());
    return true;
}
/*
static bool HandleVipAuctionCommand(ChatHandler* handler, const char* args)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			

    //handler->GetSession()->GetPlayer()->SetAuctionAccessMode(0);
    if (chr->GetTeam() == HORDE)
        handler->GetSession()->GetPlayer()->SetAuctionAccessMode(handler->GetSession()->GetPlayer()->GetTeam() != ALLIANCE ? -1 : 0);
    else
        handler->GetSession()->GetPlayer()->SetAuctionAccessMode(handler->GetSession()->GetPlayer()->GetTeam() != HORDE ? -1 : 0);
        
    handler->GetSession()->SendAuctionHello(handler->GetSession()->GetPlayer());

    return true;
}
*/
static bool HandleVipResetTalentsCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			

    // Reset Talents
    handler->GetSession()->GetPlayer()->ResetTalents(true);
    handler->GetSession()->GetPlayer()->SendTalentsInfoData(false);

    handler->PSendSysMessage(LANG_RESET_TALENTS_ONLINE, handler->GetNameLink(handler->GetSession()->GetPlayer()).c_str());
    return true;
}


static bool HandleVipWhispersCommand(ChatHandler* handler, const char* args)
{
    Player *chr = handler->GetSession()->GetPlayer();

    if (!*args)
    {
        handler->PSendSysMessage(LANG_COMMAND_WHISPERACCEPTING, handler->GetSession()->GetPlayer()->isAcceptWhispers() ?  handler->GetTrinityString(LANG_ON) : handler->GetTrinityString(LANG_OFF));
        return true;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}		

    std::string argstr = (char*)args;
    // whisper on
    if (argstr == "on")
    {
        handler->GetSession()->GetPlayer()->SetAcceptWhispers(true);
        handler->SendSysMessage(LANG_COMMAND_WHISPERON);
        return true;
    }

    // whisper off
    if (argstr == "off")
    {
        handler->GetSession()->GetPlayer()->SetAcceptWhispers(false);
        handler->SendSysMessage(LANG_COMMAND_WHISPEROFF);
        return true;
    }

    handler->SendSysMessage(LANG_USE_BOL);
    handler->SetSentErrorMessage(true);
    return false;
}

static bool HandleVipTaxiCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO_2);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			
    
    chr->SetTaxiCheater(true);
    handler->PSendSysMessage(LANG_YOU_GIVE_TAXIS, handler->GetNameLink(chr).c_str());
    if (handler->needReportToTarget(chr))
        ChatHandler(chr->GetSession()).PSendSysMessage(LANG_YOURS_TAXIS_ADDED, handler->GetNameLink().c_str());
    return true;
}

static bool HandleVipHomeCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			

	chr->CastSpell(chr, 8690, true);
	

    // remove CD and cast spell
	//TODO: Needs fix
    //chr->RemoveSpellCooldown(8690,true);
    //chr->CastSpell(chr,8690,false);
	

    return true;
}

static bool HandleVipCapitalCommand(ChatHandler* handler, const char* /*args*/)
{
    Player *chr = handler->GetSession()->GetPlayer();

    //Different Checks
    if( chr->IsInCombat() || chr->IsInFlight() || chr->GetMap()->IsBattlegroundOrArena() || chr->HasStealthAura() || chr->HasFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH) || chr->isDead())
    {
        handler->SendSysMessage(VIP_CANT_DO);
        handler->SetSentErrorMessage(true);
        return false;
    }
	
	if (!chr->GetSession()->IsPremium() && !chr->IsGameMaster())
	{
        handler->SendSysMessage(VIP_DONT_HAVE);
        handler->SetSentErrorMessage(true);
		return true;
	}			

    if (chr->GetTeam() == HORDE)
        chr->CastSpell(chr,3567,true);
    else
        chr->CastSpell(chr,3561,true);

    return true;
}

static bool HandleVipCommand(ChatHandler* handler, char const* /*args*/)
{
	uint32 accountId;
/*
	AccountTypes level = handler->GetSession()->GetSecurity();
	if (uint32(level) > 0)
	{
		if (!*args)
			return false;

		std::string accountName = strtok((char*)args, " ");

		if (!AccountMgr::normalizeString(accountName))
		{
			handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
			handler->SetSentErrorMessage(true);
			return false;
		}

		accountId = AccountMgr::GetId(accountName);
		if (!accountId)
		{
			handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
			handler->SetSentErrorMessage(true);
			return false;
		}
	}
	else
		accountId = handler->GetSession()->GetAccountId();
*/
	uint32 days = AccountMgr::VipDaysLeft(accountId);

	if (days > 0)
		handler->PSendSysMessage("Du hast keinen Elite Account.", days);
	else
		handler->PSendSysMessage("Dein Elite Account endet in %u Tagen.");

	return true;
}

static bool HandleVipStatusCommand(ChatHandler* handler, char const* args)
{
	uint32 accountId;

	AccountTypes level = handler->GetSession()->GetSecurity();
	if (uint32(level) > 0)
	{
		if (!*args)
			return false;

		std::string accountName = strtok((char*)args, " ");

		if (!AccountMgr::normalizeString(accountName))
		{
			handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
			handler->SetSentErrorMessage(true);
			return false;
		}

		accountId = AccountMgr::GetId(accountName);
		if (!accountId)
		{
			handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
			handler->SetSentErrorMessage(true);
			return false;
		}
	}
	else
		accountId = handler->GetSession()->GetAccountId();

	uint32 days = AccountMgr::VipDaysLeft(accountId);

	if (days > 0)
		handler->PSendSysMessage("Du hast keinen Elite Account.", days);
	else
		handler->PSendSysMessage("Dein Elite Account endet in %u Tagen.");

	return true;
}

/*Insel*/
static bool HandleInselCommand(ChatHandler* handler, const char* /*args*/)
{
	//MALL command

	Player *chr = handler->GetSession()->GetPlayer();

	if (chr->IsInCombat())
	{
		handler->PSendSysMessage(LANG_YOU_IN_COMBAT);
		//SetSentErrorMessage(true);
		return false;
	}
	
	if (chr->IsInFlight())
	{
		handler->PSendSysMessage(LANG_YOU_IN_FLIGHT);
		//SetSentErrorMessage(true);
		return false;
	}

	if (chr->getLevel() == 80){
		chr->TeleportTo(0, -9771.67, 2127.04, 15.07, 3.75);    // Insel Coords
	}

	else {
		handler->PSendSysMessage("Du hast keinen Elite Account.");
	}
	return true;
}

};

void AddSC_vip_commandscript()
{
    new vip_commandscript();
}
