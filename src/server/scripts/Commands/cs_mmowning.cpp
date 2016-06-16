/*
 * Copyright (C) 2012 MMOwning
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
#include "Guild.h"
#include "GuildMgr.h"

#include <iostream>
#include <iterator>
#include <vector>
#include <random>
#include <algorithm>

#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "SocialMgr.h"




class mmowning_commandscript : public CommandScript
{
public:
	mmowning_commandscript() : CommandScript("mmowning_commandscript") { }

	std::vector<ChatCommand> GetCommands()  const override
	{

		static std::vector<ChatCommand> commandTable =
		{
			//{ "goname",         SEC_MODERATOR,      false, OldHandler<&ChatHandler::HandleAppearCommand>,              "" },				
			//{ "namego",         SEC_MODERATOR,      false, OldHandler<&ChatHandler::HandleSummonCommand>,              "" },				
			//Allows your players to gamble for fun and prizes
			{ "gamble", SEC_PLAYER, false, &HandleGambleCommand, "" },
			{ "roulette", SEC_PLAYER, false, &HandleRouletteCommand, "" },
			//Mall Teleporter
			{ "mall", SEC_PLAYER, false, &HandleMallCommand, "" },
			//Dalaran Teleporter
			{ "dala", SEC_PLAYER, false, &HandleDalaCommand, "" },
			//Buffer
			{ "buffs", SEC_PLAYER, false, &HandleBuffsCommand, ""},
			//GuildHouse Tele
			{ "gh", SEC_PLAYER, false, &HandleGHCommand, "" },
			//insel
			{ "tester", SEC_ADMINISTRATOR, false, &HandleInselCommand, "" },

			{ "gutschein", SEC_PLAYER, false, &HandleGutscheinCommand, "" },

			{ "werbung", SEC_ADMINISTRATOR, false, &HandleWerbungCommand, "" },
            
            { "gutscheinerstellen", SEC_ADMINISTRATOR, false, &HandlegutscheinerstellenCommand, "" },
            
            { "frage", SEC_ADMINISTRATOR, false, &HandleFragenCommand, "" },

			//{ "tcrecon",        SEC_MODERATOR,      false, &HandleIRCRelogCommand,            "" },	

		};

		return commandTable;
	}

    
    
    
    //Allow player to loss all their money.
    static bool HandleGambleCommand(ChatHandler* handler, const char* args)
    {
        Player *chr = handler->GetSession()->GetPlayer();
        
        char* px = strtok((char*)args, " ");
        
        if (!px)
            return false;
        
        uint32 money = (uint32)atoi(px);
        
        if (chr->GetMoney() < money)
        {
            handler->PSendSysMessage("Du kannst kein Gold setzen welches du nicht hast!");
            return true;
        }
        
        else
        {
            if (money > 0)
            {
                //if (rand()%100 < 50)
                if (rand() % 100 < 40)
                {
                    chr->ModifyMoney(money - (money / 10));
                    //chr->ModifyMoney(money*2);
                    handler->PSendSysMessage("Du hast gewonnen und deinen Einsatz verdoppelt");
                }
                else
                {
                    chr->ModifyMoney(-int(money));
                    handler->PSendSysMessage("Du hast verloren");
                }
            }
        }
        
        return true;
    }
    
    
    //Erstellt neue Fragen in der DB
    static bool HandleFragenCommand(ChatHandler* handler, const char* args)
    {
        Player* player = handler->GetSession()->GetPlayer();
        
        char* frage = strtok((char*)args, " ");
        if (!frage){
            player->GetSession()->SendNotification("Ohne Frage geht das leider nicht!");
            return true;
        }
        
        char* antwort = strtok(NULL, " ");
        if (!antwort){
            player->GetSession()->SendNotification("Ohne Antwort geht das leider nicht!");
            return true;
        }
        
        
        char* belohnung = strtok(NULL, " ");
        if (!belohnung){
            player->GetSession()->SendNotification("Ohne Belohnung geht das leider nicht!");
            return true;
        }
        
        char* anzahl = strtok(NULL, " ");
        if (!anzahl){
            player->GetSession()->SendNotification("Ohne Anzahl geht das leider nicht!");
            return true;
        }
        
        uint32 intanzahl = atoi((char*)anzahl);
        uint32 itemid = atoi((char*)belohnung);
        
        PreparedStatement * itemquery = WorldDatabase.GetPreparedStatement(WORLD_SEL_ITEM_NR);
        itemquery->setUInt32(0,itemid);
        PreparedQueryResult ergebnis = WorldDatabase.Query(itemquery);
        
        
        if(!ergebnis){
            player->GetSession()->SendNotification("Item existiert nicht.");
            return true;
        }
        
        if(itemid == 49623){
            player->GetSession()->SendNotification("Schattengram als Belohnung zu generieren ist verboten, wird geloggt und Exitare informiert.");
            CharacterDatabase.PExecute("INSERT INTO eventteamlog "
                                       "(player,guid, itemid,gutscheincode,anzahl)"
                                       "VALUES ('%s', '%u', '%u', '%s','%u')",
                                       player->GetSession()->GetPlayerName(),player->GetGUID(),belohnung,"Schattemgram",0);
        
        }
        
        PreparedStatement* insert = CharacterDatabase.GetPreparedStatement(CHAR_INS_FRAGEN);
        insert->setString(0, frage);
        insert->setString(1, antwort);
        insert->setInt32(2, itemid);
        insert->setInt32(3, intanzahl);
        CharacterDatabase.Execute(insert);
		player->GetSession()->SendNotification("Frage wurde erfolgreich eingetragen");
        return true;
        
    }
    
	//Gibt dem Eventteam die Moeglichkeit Gutscheine fuer Spieler zu erstellen.
	static bool HandlegutscheinerstellenCommand(ChatHandler* handler, const char* args)
	{

		Player* player = handler->GetSession()->GetPlayer();
		
		char* itemid = strtok((char*)args, " ");
		if (!itemid){
			player->GetSession()->SendNotification("Ohne ItemID geht das leider nicht!");
			return true;
		}

		uint32 item = atoi((char*)itemid);

		char* anzahl = strtok(NULL, " ");
		if (!anzahl || !atoi(anzahl)){
			player->GetSession()->SendNotification("Ohne Anzahl geht das leider nicht!");
			return true;
		}
			
        PreparedStatement * itemquery = WorldDatabase.GetPreparedStatement(WORLD_SEL_ITEM_NR);
        itemquery->setUInt32(0,item);
        PreparedQueryResult ergebnis = WorldDatabase.Query(itemquery);
		
        
        if(!ergebnis){
            player->GetSession()->SendNotification("Item existiert nicht");
            return true;
        }
        
        
		uint32 anzahlint = atoi((char*)anzahl);
		
		//uint32 item = atoi((char*)args);

        
        if (!item)
        {
            player->GetSession()->SendNotification("Ohne Itemid geht das leider nicht!");
            return true;
        }

		if (!anzahl)
		{
			player->GetSession()->SendNotification("Ohne Anzahl geht das leider nicht!");
			return true;
		}

        
        
        if(item == 49623){
            player->GetSession()->SendNotification("Schattengram als Belohnung zu generieren ist verboten, wird geloggt und Exitare informiert.");
            CharacterDatabase.PExecute("INSERT INTO eventteamlog "
                                       "(player,guid, itemid,gutscheincode,anzahl)"
                                       "VALUES ('%s', '%u', '%u', '%s','%u')",
                                       player->GetSession()->GetPlayerName(),player->GetGUID(),item,"Schattemgram",0);
            
            /*std::string name = player->GetSession()->GetPlayerName();
            std::ostringstream ss;
            ss << "Verstoss: " << name << " hat versucht Schattengram als Belohnung zu generieren.";
            
			
            SQLTransaction trans = CharacterDatabase.BeginTransaction();
            MailDraft("Eventteamverstoss", ss.str().c_str())
            .SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
            CharacterDatabase.CommitTransaction(trans);*/
            

            return true;
        }
        

        
       
        auto randchar = []() -> char
        {
            const char charset[] =
            "0123456789"
            "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            "abcdefghijklmnopqrstuvwxyz";
            const size_t max_index = (sizeof(charset) - 1);
            return charset[rand() % max_index];
        };
        std::string str(10, 0);
        std::generate_n(str.begin(), 10, randchar);
        
        /*CharacterDatabase.PExecute("INSERT INTO `item_codes` (code,belohnung,anzahl,benutzt,benutztbar) Values ('%s','%u','%u','%u','%u')", str, item, anzahlint, 0,1);*/
        
        PreparedStatement * inscode = CharacterDatabase.GetPreparedStatement(CHAR_INS_NOPLAYERITEMCODE);
        inscode->setString(0, str);
        inscode->setUInt32(1, item);
        inscode->setUInt32(2, anzahlint);
        inscode->setUInt32(3, 0);
        inscode->setUInt32(4, 1);
        CharacterDatabase.Execute(inscode);
        
        
        std::ostringstream ss;
        std::ostringstream tt;
        
	
		QueryResult itemsql = WorldDatabase.PQuery("SELECT `name` FROM `item_template` WHERE `entry` = '%u'", item);
		Field *fields = itemsql->Fetch();
		std::string itemname = fields[0].GetCString();

		ss << "Der Code fuer das Item: " << itemname << " mit der Anzahl "<< anzahlint <<" lautet " << str <<" . Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team";
        player->GetSession()->SendNotification("Dein Code wurde generiert und dir zugesendet.");
        
        tt << str << " ist der generierte Gutscheincode fuer das Item " << itemname << " und der Anzahl " << anzahlint;
        handler->PSendSysMessage(tt.str().c_str(),player->GetName());
        SQLTransaction trans = CharacterDatabase.BeginTransaction();
        MailDraft("Dein Gutscheincode", ss.str().c_str())
        .SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
        CharacterDatabase.CommitTransaction(trans);

        
        
        /*CharacterDatabase.PExecute("INSERT INTO firstnpc_log "
                                   "(grund,spieler, guid)"
                                   "VALUES ('%s', '%s', '%u')",
                                   "Eventteamgutschein", player->GetSession()->GetPlayerName(),player->GetGUID()); */
        
        PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_FIRSTLOG);
        stmt->setString(0, "Eventteamgutschein");
        stmt->setString(1, player->GetSession()->GetPlayerName());
        stmt->setUInt32(2, player->GetGUID());
		CharacterDatabase.Execute(stmt);
        
        PreparedStatement* eventlog  = CharacterDatabase.GetPreparedStatement(CHAR_INS_EVENTLOG);
        eventlog->setString(0, player->GetSession()->GetPlayerName());
        eventlog->setUInt32(1, player->GetGUID());
        eventlog->setUInt32(2, item);
        eventlog->setString(3, str);
        eventlog->setUInt32(4, anzahlint);
        CharacterDatabase.Execute(eventlog);
        
        /*CharacterDatabase.PExecute("INSERT INTO eventteamlog "
                                   "(player,guid, itemid,gutscheincode,anzahl)"
                                   "VALUES ('%s', '%u', '%u', '%s','%u')",
                                   player->GetSession()->GetPlayerName(),player->GetGUID(),item,str,anzahlint); */

        return true;
        
    };

	static bool HandleRouletteCommand(ChatHandler* handler, const char* args)
	{
		Player *chr = handler->GetSession()->GetPlayer();

		char* px = strtok((char*)args, " ");

		if (!px)
			return false;

		uint32 money = (uint32)atoi(px);

		if (chr->GetMoney() < money)
		{
			handler->PSendSysMessage("Du kannst kein Gold setzen welches du nicht hast!");
			return true;
		}

		else
		{
			if (money > 0)
			{
				//if (rand()%36 < 1)
				if (rand() % 42 < 1)
				{
					chr->ModifyMoney(money * 36);
					handler->PSendSysMessage("Du hast das 36x deines Einsatzes gewonnen, GZ!");
				}

				else
				{
					chr->ModifyMoney(-int(money));
					handler->PSendSysMessage("Du hast verloren");
				}
			}
		}

		return true;
	}

	//Mall Teleporter
	static bool HandleMallCommand(ChatHandler* handler, const char* /*args*/)
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
		//Comment because of using it afk killing and buy Things at Vendor
		//chr->ResurrectPlayer(0.5, false);

		switch (chr->GetTeam())
		{
		case ALLIANCE:
			chr->TeleportTo(0, -8842.09f, 626.358f, 94.0867f, 0.0f);    // Insert Ally mall Cords here
			break;

		case HORDE:
			chr->TeleportTo(1, 1601.08f, -4378.69f, 9.9846f, 0.15315f);    // Insert Horde mall Cords here
			break;
		}
		return true;
	};

	//Dalaran Teleporter
	static bool HandleDalaCommand(ChatHandler* handler, const char* /*args*/)
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

		chr->ResurrectPlayer(0.5, false);

		chr->TeleportTo(571, 5809.55f, 503.975f, 657.526f, 1.70185f);    // Insert Dala Coords

		return true;
	};

	//Buffer
	static bool HandleBuffsCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player *chr = handler->GetSession()->GetPlayer();

		if (chr->IsInCombat())
		{
			handler->PSendSysMessage("Du kannst dich nicht waehrend eines Kampfes buffen");
			//SetSentErrorMessage(true);
			return false;
		}
		if (chr->IsInFlight())
		{
			handler->PSendSysMessage("Du kannste dich nicht waehrend des Fliegens buffen");
			//SetSentErrorMessage(true);
			return false;
		}

		if (chr->GetMoney() >= 2000000)
		{
			chr->Dismount();
			chr->RemoveAurasByType(SPELL_AURA_MOUNTED);
			chr->AddAura(48161, chr);              // Power Word: Fortitude        
			chr->AddAura(48073, chr);              // Divine Spirit
			chr->AddAura(20217, chr);              // Blessing of Kings
			chr->AddAura(48469, chr);              // Mark of the wild
			chr->AddAura(16609, chr);              // Spirit of Zandalar
			chr->AddAura(15366, chr);              // Songflower Serenade
			chr->AddAura(22888, chr);              // Rallying Cry of the Dragonslayer
			chr->AddAura(57399, chr);              // Well Fed
			chr->AddAura(17013, chr);              // Agamaggan's Agility
			chr->AddAura(16612, chr);              // Agamaggan's Strength
			chr->ModifyMoney(-2000000);
			handler->PSendSysMessage("Du bist jetzt gebufft!");
			return false;
		}
		else
		{
			handler->PSendSysMessage("Du hast nicht genug Gold!");
		}
		return false;
	}

	//GuildHouse Tele
	static bool HandleGHCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player *chr = handler->GetSession()->GetPlayer();

		if (chr->IsInFlight())
		{
			//pokud hrac leti
			handler->PSendSysMessage(LANG_YOU_IN_FLIGHT);
			//SetSentErrorMessage(true);
			return false;
		}

		if (chr->IsInCombat())
		{
			//pokud je hrac v combatu
			handler->PSendSysMessage(LANG_YOU_IN_COMBAT);
			//SetSentErrorMessage(true);
			return false;
		}

		if (chr->GetGuildId() == 0)
		{
			//pokud hrac nema guildu
			return false;
		}

		QueryResult result;
		result = CharacterDatabase.PQuery("SELECT `x`, `y`, `z`, `map` FROM `guildhouses` WHERE `guildId` = %u", chr->GetGuildId());
		if (!result)
		{
			//pokud guilda nema guildhouse zapsany v tabulce guildhouses
			handler->PSendSysMessage("GH Port");
			return false;
		}


		float x, y, z;
		uint32 map;

		Field *fields = result->Fetch();
		x = fields[0].GetFloat();
		y = fields[1].GetFloat();
		z = fields[2].GetFloat();
		map = fields[3].GetUInt32();


		chr->SaveRecallPosition();
		chr->TeleportTo(map, x, y, z, 0);
		chr->SaveToDB();
		return true;
	}

	//GuildHouse Tele
	static bool HandleInselCommand(ChatHandler* handler, const char* /*args*/)
	{
		Player *chr = handler->GetSession()->GetPlayer();

		chr->TeleportTo(1, 16226.20, 16257.00, 13.20, 1.65);
		return true;

	};




	static bool HandleGutscheinCommand(ChatHandler* handler, const char* args)
	{
		Player *player = handler->GetSession()->GetPlayer();

		std::string itemCode = std::string((char*)args);

		if (itemCode == "")
		{
			player->GetSession()->SendNotification("Ohne Code geht das leider nicht!");
			return true;
		}

		if (itemCode == "GOLD"){
			return true;
		}

        
        
        PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_ITEMCODEGES);
        stmt->setString(0, itemCode);
        PreparedQueryResult result = CharacterDatabase.Query(stmt);
        
		//QueryResult result = CharacterDatabase.PQuery("SELECT `code`, `belohnung`, `anzahl`, `benutzt`, `benutztbar` FROM `item_codes` WHERE `code` = '%s'", itemCode);
        
        
		if (result)
		{

			Field* fields = result->Fetch();
			std::string code = fields[0].GetCString();
			uint32 belohnung = fields[1].GetUInt32();
			uint32 anzahl = fields[2].GetUInt32();
			uint8 benutzt = fields[3].GetUInt8();
			uint32 benutztbar = fields[4].GetUInt32();
			
			QueryResult accvorhanden = CharacterDatabase.PQuery("SELECT `accid`,`code` FROM `item_codes_account` WHERE `accid` = '%u' AND code = '%s' ", player->GetSession()->GetAccountId(),code);
			
			if (!accvorhanden){
				QueryResult itemid = WorldDatabase.PQuery("SELECT `entry` FROM `item_template` WHERE `entry` = '%u'", belohnung);

				if (!itemid){
					player->GetSession()->SendNotification("Das Item scheint nicht zu existieren. Der Code wird daher abgelehnt");
					return true;
				}



				if (benutzt < benutztbar)
				{
					benutzt++;
					Item* item = Item::CreateItem(belohnung, anzahl);
					player->GetSession()->SendNotification("Dein Code wurde akzeptiert!");
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					item->SaveToDB(trans);
					MailDraft("Dein Gutscheincode", "Dein Code wurde erfolgreich eingeloest. Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team").AddItem(item)
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);

					CharacterDatabase.PExecute("UPDATE item_codes SET name = '%s' WHERE code = '%s'", player->GetName().c_str(), itemCode);
					CharacterDatabase.PExecute("UPDATE item_codes SET benutzt = '%u' WHERE code = '%s'", benutzt, itemCode);
                    
                    PreparedStatement* itemcodeaccount = CharacterDatabase.GetPreparedStatement(CHAR_INS_ITEMCODEACCOUNT);
                    itemcodeaccount->setString(0,player->GetSession()->GetPlayerName());
                    itemcodeaccount->setUInt32(1, player->GetSession()->GetAccountId());
                    itemcodeaccount->setString(2,itemCode);
                    CharacterDatabase.Execute(itemcodeaccount);
                    
					//CharacterDatabase.PExecute("INSERT INTO item_codes_account (name,accid,code) Values('%s','%u','%s')", player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), itemCode);

					char msg[250];
					snprintf(msg, 250, "Dein Code wurde akzeptiert.");
					ChatHandler(player->GetSession()).PSendSysMessage(msg,
						player->GetName());
					return true;

				}
				else{
					char msg[250];
					snprintf(msg, 250, "Der Code hat keine weitere Aufladung und wird daher abgelehnt.");
					ChatHandler(player->GetSession()).PSendSysMessage(msg,
						player->GetName());
					return true;
				}
			}

			else{
				char msg[250];
				snprintf(msg, 250, "Du hast den Code bereits verwendet.");
				ChatHandler(player->GetSession()).PSendSysMessage(msg,
					player->GetName());
				return true;

			}
		}
		else{
			char msg[250];
			snprintf(msg, 250, "Der eingegebene Code exisitert nicht.");
			ChatHandler(player->GetSession()).PSendSysMessage(msg,
				player->GetName());
			return true;
		}
		return true;
};



	static bool HandleWerbungCommand(ChatHandler* handler, const char* args)
	{
		Player* player = handler->GetSession()->GetPlayer();

		std::string eingabe = std::string((char*)args);

		if (eingabe == "")
		{
			player->GetSession()->SendNotification("Ohne Eingabe eines Namens geht das leider nicht.");
			return true;
		}

		if (eingabe == "Gutschein"){
			return true;
		}

    
		QueryResult result = CharacterDatabase.PQuery("SELECT `id`, `nachricht`, `player`, `guid`,`accid` FROM `fremdwerbung` WHERE `player` = '%s'", eingabe);

		if (result)
		{

			Field* fields = result->Fetch();
			//uint32 id = fields[0].GetUInt32();
			std::string nachricht = fields[1].GetCString();
			std::string player = fields[2].GetCString();
			//uint32 guid = fields[3].GetUInt32();
			//uint32 accid = fields[4].GetUInt32();


			QueryResult ergebnis = CharacterDatabase.PQuery("SELECT count(guid) FROM `fremdwerbung` WHERE `player` = '%s'", eingabe);
			Field* felder = ergebnis->Fetch();
			uint32 anzahl = felder[0].GetUInt32();

			std::ostringstream uu;
			std::ostringstream tt;

			uu << "Eintrag mit dem Namen: " << eingabe << " vorhanden.";
			tt << "Es sind: " << anzahl << " Eintraege vorhanden. Uberpruefung ist sinnvoll.";
			
			sWorld->SendGMText(LANG_GM_BROADCAST, uu.str().c_str());
			sWorld->SendGMText(LANG_GM_BROADCAST, tt.str().c_str());
			
			return true;
		}

		else {
			std::ostringstream uu;
			uu << "Keinen Eintrag des Spielers " << eingabe << " vorhanden.";
			sWorld->SendGMText(LANG_GM_BROADCAST, uu.str().c_str());
			return true;
		}


	}


};


void AddSC_mmowning_commandscript()
{
    new mmowning_commandscript();
}