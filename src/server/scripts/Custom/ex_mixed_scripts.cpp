#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include "Bag.h"
#include "Mail.h"
#include "Common.h"
#include "CalendarMgr.h"
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
#include "Guild.h"
#include "Arena.h"
#include "ArenaTeam.h"
#include "ArenaScore.h"
#include "ArenaTeamMgr.h"
#include <Custom/Logic/CustomXP.h>
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomCharacterSystem.h>


#define MSG_COLOR_ALICEBLUE            "|cFFF0F8FF"
#define MSG_COLOR_ANTIQUEWHITE         "|cFFFAEBD7"
#define MSG_COLOR_AQUA                 "|cFF00FFFF"  
#define MSG_COLOR_AQUAMARINE           "|cFF7FFFD4"
#define MSG_COLOR_AZURE                "|cFFF0FFFF"
#define MSG_COLOR_BEIGE                "|cFFF5F5DC"  
#define MSG_COLOR_BISQUE               "|cFFFFE4C4"
#define MSG_COLOR_BLACK                "|cFF000000"
#define MSG_COLOR_BLANCHEDALMOND       "|cFFFFEBCD"
#define MSG_COLOR_BLUE                 "|cFF0000FF"
#define MSG_COLOR_BLUEVIOLET           "|cFF8A2BE2"
#define MSG_COLOR_BROWN                "|cFFA52A2A"
#define MSG_COLOR_BURLYWOOD            "|cFFDEB887"
#define MSG_COLOR_CADETBLUE            "|cFF5F9EA0"
#define MSG_COLOR_CHARTREUSE           "|cFF7FFF00"
#define MSG_COLOR_CHOCOLATE            "|cFFD2691E"
#define MSG_COLOR_CORAL                "|cFFFF7F50"
#define MSG_COLOR_CORNFLOWERBLUE       "|cFF6495ED"
#define MSG_COLOR_CORNSILK             "|cFFFFF8DC"
#define MSG_COLOR_CRIMSON              "|cFFDC143C"
#define MSG_COLOR_CYAN                 "|cFF00FFFF"
#define MSG_COLOR_DARKBLUE             "|cFF00008B"
#define MSG_COLOR_DARKCYAN             "|cFF008B8B"
#define MSG_COLOR_DARKGOLDENROD        "|cFFB8860B"
#define MSG_COLOR_DARKGRAY             "|cFFA9A9A9"
#define MSG_COLOR_DARKGREEN            "|cFF006400"
#define MSG_COLOR_DARKKHAKI            "|cFFBDB76B"
#define MSG_COLOR_DARKMAGENTA          "|cFF8B008B"
#define MSG_COLOR_DARKOLIVEGREEN       "|cFF556B2F"
#define MSG_COLOR_DARKORANGE           "|cFFFF8C00"
#define MSG_COLOR_DARKORCHID           "|cFF9932CC"
#define MSG_COLOR_DARKRED              "|cFF8B0000"
#define MSG_COLOR_DARKSALMON           "|cFFE9967A"
#define MSG_COLOR_DARKSEAGREEN         "|cFF8FBC8B"
#define MSG_COLOR_DARKSLATEBLUE        "|cFF483D8B"
#define MSG_COLOR_DARKSLATEGRAY        "|cFF2F4F4F"
#define MSG_COLOR_DARKTURQUOISE        "|cFF00CED1"
#define MSG_COLOR_DARKVIOLET           "|cFF9400D3"
#define MSG_COLOR_DEEPPINK             "|cFFFF1493"
#define MSG_COLOR_DEEPSKYBLUE          "|cFF00BFFF"
#define MSG_COLOR_DIMGRAY              "|cFF696969"
#define MSG_COLOR_DODGERBLUE           "|cFF1E90FF"
#define MSG_COLOR_FIREBRICK            "|cFFB22222"
#define MSG_COLOR_FLORALWHITE          "|cFFFFFAF0"
#define MSG_COLOR_FORESTGREEN          "|cFF228B22"
#define MSG_COLOR_FUCHSIA              "|cFFFF00FF"
#define MSG_COLOR_GAINSBORO            "|cFFDCDCDC"
#define MSG_COLOR_GHOSTWHITE           "|cFFF8F8FF"
#define MSG_COLOR_GOLD                 "|cFFFFD700"
#define MSG_COLOR_GOLDENROD            "|cFFDAA520"
#define MSG_COLOR_GRAY                 "|cFF808080"
#define MSG_COLOR_GREEN                "|cFF008000"
#define MSG_COLOR_GREENYELLOW          "|cFFADFF2F"
#define MSG_COLOR_HONEYDEW             "|cFFF0FFF0"
#define MSG_COLOR_HOTPINK              "|cFFFF69B4"
#define MSG_COLOR_INDIANRED            "|cFFCD5C5C"
#define MSG_COLOR_INDIGO               "|cFF4B0082"
#define MSG_COLOR_IVORY                "|cFFFFFFF0"
#define MSG_COLOR_KHAKI                "|cFFF0E68C"
#define MSG_COLOR_LAVENDER             "|cFFE6E6FA"
#define MSG_COLOR_LAVENDERBLUSH        "|cFFFFF0F5"
#define MSG_COLOR_LAWNGREEN            "|cFF7CFC00"
#define MSG_COLOR_LEMONCHIFFON         "|cFFFFFACD"
#define MSG_COLOR_LIGHTBLUE            "|cFFADD8E6"
#define MSG_COLOR_LIGHTCORAL           "|cFFF08080"
#define MSG_COLOR_LIGHTCYAN            "|cFFE0FFFF"
#define MSG_COLOR_LIGHTGRAY            "|cFFD3D3D3"
#define MSG_COLOR_LIGHTGREEN           "|cFF90EE90"
#define MSG_COLOR_LIGHTPINK            "|cFFFFB6C1"
#define MSG_COLOR_LIGHTRED             "|cFFFF6060"
#define MSG_COLOR_LIGHTSALMON          "|cFFFFA07A"
#define MSG_COLOR_LIGHTSEAGREEN        "|cFF20B2AA"
#define MSG_COLOR_LIGHTSKYBLUE         "|cFF87CEFA"
#define MSG_COLOR_LIGHTSLATEGRAY       "|cFF778899"
#define MSG_COLOR_LIGHTSTEELBLUE       "|cFFB0C4DE"
#define MSG_COLOR_LIGHTYELLOW          "|cFFFFFFE0"
#define MSG_COLOR_LIME                 "|cFF00FF00"
#define MSG_COLOR_LIMEGREEN            "|cFF32CD32"
#define MSG_COLOR_LINEN                "|cFFFAF0E6"
#define MSG_COLOR_MAGENTA              "|cFFFF00FF"
#define MSG_COLOR_MAROON               "|cFF800000"
#define MSG_COLOR_MEDIUMAQUAMARINE     "|cFF66CDAA"
#define MSG_COLOR_MEDIUMBLUE           "|cFF0000CD"
#define MSG_COLOR_MEDIUMORCHID         "|cFFBA55D3"
#define MSG_COLOR_MEDIUMPURPLE         "|cFF9370DB"
#define MSG_COLOR_MEDIUMSEAGREEN       "|cFF3CB371"
#define MSG_COLOR_MEDIUMSLATEBLUE      "|cFF7B68EE"
#define MSG_COLOR_MEDIUMSPRINGGREEN    "|cFF00FA9A"
#define MSG_COLOR_MEDIUMTURQUOISE      "|cFF48D1CC"
#define MSG_COLOR_MEDIUMVIOLETRED      "|cFFC71585"
#define MSG_COLOR_MIDNIGHTBLUE         "|cFF191970"
#define MSG_COLOR_MINTCREAM            "|cFFF5FFFA"
#define MSG_COLOR_MISTYROSE            "|cFFFFE4E1"
#define MSG_COLOR_MOCCASIN             "|cFFFFE4B5"
#define MSG_COLOR_NAVAJOWHITE          "|cFFFFDEAD"
#define MSG_COLOR_NAVY                 "|cFF000080"
#define MSG_COLOR_OLDLACE              "|cFFFDF5E6"
#define MSG_COLOR_OLIVE                "|cFF808000"
#define MSG_COLOR_OLIVEDRAB            "|cFF6B8E23"
#define MSG_COLOR_ORANGE               "|cFFFFA500"
#define MSG_COLOR_ORANGERED            "|cFFFF4500"
#define MSG_COLOR_ORCHID               "|cFFDA70D6"
#define MSG_COLOR_PALEGOLDENROD        "|cFFEEE8AA"
#define MSG_COLOR_PALEGREEN            "|cFF98FB98"
#define MSG_COLOR_PALETURQUOISE        "|cFFAFEEEE"
#define MSG_COLOR_PALEVIOLETRED        "|cFFDB7093"
#define MSG_COLOR_PAPAYAWHIP           "|cFFFFEFD5"
#define MSG_COLOR_PEACHPUFF            "|cFFFFDAB9"  
#define MSG_COLOR_PERU                 "|cFFCD853F"
#define MSG_COLOR_PINK                 "|cFFFFC0CB" 
#define MSG_COLOR_PLUM                 "|cFFDDA0DD"
#define MSG_COLOR_POWDERBLUE           "|cFFB0E0E6"
#define MSG_COLOR_PURPLE               "|cFF800080"
#define MSG_COLOR_RED                  "|cFFFF0000"
#define MSG_COLOR_ROSYBROWN            "|cFFBC8F8F"
#define MSG_COLOR_ROYALBLUE            "|cFF4169E1"   
#define MSG_COLOR_SADDLEBROWN          "|cFF8B4513"  
#define MSG_COLOR_SALMON               "|cFFFA8072" 
#define MSG_COLOR_SANDYBROWN           "|cFFF4A460"
#define MSG_COLOR_SEAGREEN             "|cFF2E8B57"
#define MSG_COLOR_SEASHELL             "|cFFFFF5EE"
#define MSG_COLOR_SIENNA               "|cFFA0522D"
#define MSG_COLOR_SILVER               "|cFFC0C0C0"
#define MSG_COLOR_SKYBLUE              "|cFF87CEEB"  
#define MSG_COLOR_SLATEBLUE            "|cFF6A5ACD"
#define MSG_COLOR_SLATEGRAY            "|cFF708090"
#define MSG_COLOR_SNOW                 "|cFFFFFAFA"    
#define MSG_COLOR_SPRINGGREEN          "|cFF00FF7F"    
#define MSG_COLOR_STEELBLUE            "|cFF4682B4"
#define MSG_COLOR_TAN                  "|cFFD2B48C"  
#define MSG_COLOR_TEAL                 "|cFF008080"
#define MSG_COLOR_THISTLE              "|cFFD8BFD8"
#define MSG_COLOR_TOMATO               "|cFFFF6347"    
#define MSG_COLOR_TRANSPARENT          "|c00FFFFFF"
#define MSG_COLOR_TURQUOISE            "|cFF40E0D0"
#define MSG_COLOR_VIOLET               "|cFFEE82EE"   
#define MSG_COLOR_WHEAT                "|cFFF5DEB3"
#define MSG_COLOR_WHITE                "|cFFFFFFFF"
#define MSG_COLOR_WHITESMOKE           "|cFFF5F5F5"
#define MSG_COLOR_YELLOW               "|cFFFFFF00"

#define Servername "Blacknetwork"
#define MOTD	"Welcome on Blacknetwork"
#define THX "Thank you for playing on Blacknetwork!"
#define PRESENT "Your Present"

class Announce_NewPlayer : public PlayerScript
{

public:
	Announce_NewPlayer() : PlayerScript("Announce_NewPlayer") {}	

   
    void Belohnung(Player* player, uint32 zeit, uint32 guid,uint32 money){
            
        PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOB);
        stmt->setInt32(0,zeit);
        stmt->setInt32(1, player->GetGUID());
        PreparedQueryResult result = CharacterDatabase.Query(stmt);
        
        if (!result){
			            
            SQLTransaction trans = CharacterDatabase.BeginTransaction();
            MailDraft(PRESENT, THX).AddMoney(money * GOLD)
            .SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
            CharacterDatabase.CommitTransaction(trans);
            
            CharacterDatabase.PExecute("INSERT INTO lob (zeit,spieler,uid,benutzt) Values ('%u','%s','%u','%u')", zeit, player->GetName().c_str(), guid, 1);
            player->SaveToDB();
            return;
            
        }
        
    }
    
    
	void OnLogin(Player * player, bool /*online*/)
	{
		std::ostringstream ss;
		      
        
        PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_SUM_CHARS);
        stmt->setInt32(0,player->GetSession()->GetAccountId());
        PreparedQueryResult result = CharacterDatabase.Query(stmt);

        Field* felder = result->Fetch();
        uint32 charresultint = felder[0].GetUInt32();
        

		if (sConfigMgr->GetBoolDefault("Welcome.Message", true)) {
			if (player->GetTotalPlayedTime() < 1 && charresultint == 1)
			{
				ss << "|cff54b5ff Welcome on " << Servername << ": |r " << ChatHandler(player->GetSession()).GetNameLink();
				sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
				return;
			}
		}

	



		uint32 time = player->GetTotalPlayedTime();
		
		if (sConfigMgr->GetBoolDefault("Playtime.Goodies", true)) {

			//10h
			if (time >= 36000 && time <= 71999) {

				Belohnung(player->GetSession()->GetPlayer(), 10, player->GetGUID(), 250);

			}

			//20h
			if (time >= 72000 && time <= 107999) {

				Belohnung(player->GetSession()->GetPlayer(), 20, player->GetGUID(), 250);

			}

			//30h
			if (time >= 108000 && time <= 143999) {

				Belohnung(player->GetSession()->GetPlayer(), 30, player->GetGUID(), 250);

			}



			//40h
			if (time >= 144000 && time <= 179999) {

				Belohnung(player->GetSession()->GetPlayer(), 40, player->GetGUID(), 250);

			}


			//50h
			if (time >= 180000 && time <= 215999) {

				Belohnung(player->GetSession()->GetPlayer(), 50, player->GetGUID(), 500);


			}

			//60h
			if (time >= 216000 && time <= 251999) {

				Belohnung(player->GetSession()->GetPlayer(), 60, player->GetGUID(), 500);


			}


			//70h
			if (time >= 252000 && time <= 279999) {

				Belohnung(player->GetSession()->GetPlayer(), 70, player->GetGUID(), 500);


			}


			//80h
			if (time >= 288000 && time <= 323999) {

				Belohnung(player->GetSession()->GetPlayer(), 80, player->GetGUID(), 500);

			}

			//90h
			if (time >= 324000 && time <= 359999) {

				Belohnung(player->GetSession()->GetPlayer(), 90, player->GetGUID(), 500);


			}


			//100h
			if (time >= 360000 && time <= 395999) {

				//QueryResult result = CharacterDatabase.PQuery("SELECT `id`, `zeit`, `spieler`,`uid` `benutzt` FROM `lob` WHERE `zeit` = '%u' AND `uid`= '%u'", 100, player->GetGUID());

				PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOB);
				stmt->setInt32(0, 100);
				stmt->setInt32(1, player->GetGUID());
				PreparedQueryResult result = CharacterDatabase.Query(stmt);

				if (!result) {
					uint32 uid = player->GetGUID();

					Item* item = Item::CreateItem(46802, 1);
					player->GetSession()->SendNotification("Herzlichen Glueckwunsch zu 100h Spielzeit.");
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					item->SaveToDB(trans);
					MailDraft(PRESENT, THX).AddItem(item)
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);

					CharacterDatabase.PExecute("INSERT INTO lob (zeit,spieler,uid,benutzt) Values ('%u','%s','%u','%u')", 100, player->GetName().c_str(), uid, 1);

				}
			}


			//110h
			if (time >= 396000 && time <= 431999) {

				Belohnung(player->GetSession()->GetPlayer(), 110, player->GetGUID(), 500);


			}

			//120h
			if (time >= 432000 && time <= 467999) {

				Belohnung(player->GetSession()->GetPlayer(), 120, player->GetGUID(), 500);


			}


			//130h
			if (time >= 468000 && time <= 503999) {

				Belohnung(player->GetSession()->GetPlayer(), 130, player->GetGUID(), 500);


			}


			//140h
			if (time >= 504000 && time <= 539999) {

				Belohnung(player->GetSession()->GetPlayer(), 140, player->GetGUID(), 500);

			}


			//150h
			if (time >= 540000 && time <= 575999) {

				Belohnung(player->GetSession()->GetPlayer(), 150, player->GetGUID(), 1000);
			}


			//160h
			if (time >= 576000 && time <= 611999) {

				Belohnung(player->GetSession()->GetPlayer(), 160, player->GetGUID(), 1000);

			}


			//170h
			if (time >= 612000 && time <= 647999) {

				Belohnung(player->GetSession()->GetPlayer(), 170, player->GetGUID(), 1000);

			}

			//180h
			if (time >= 648000 && time <= 683999) {

				Belohnung(player->GetSession()->GetPlayer(), 180, player->GetGUID(), 1000);

			}


			//190h
			if (time >= 684000 && time <= 719999) {

				Belohnung(player->GetSession()->GetPlayer(), 190, player->GetGUID(), 1000);

			}


			//200h
			if (time >= 720000) {

				PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOB);
				stmt->setInt32(0, 200);
				stmt->setInt32(1, player->GetGUID());
				PreparedQueryResult result = CharacterDatabase.Query(stmt);


				if (!result) {

					Item* item = Item::CreateItem(37719, 1);
					uint32 uid = player->GetGUID();
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					item->SaveToDB(trans);
					MailDraft(PRESENT, THX).AddItem(item)
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);

					CharacterDatabase.PExecute("INSERT INTO lob (zeit,spieler,uid,benutzt) Values ('%u','%s','%u','%u')", 200, player->GetName().c_str(), uid, 1);
				}

			}

		}
	}

};


class Logoutcheck : public PlayerScript
{
public:
	Logoutcheck() : PlayerScript("Logoutcheck"){}


	void OnLogout(Player* player) {
		CustomGMLogic * GMLogic = 0;
		CustomCharacterSystem * CharacterSystem = 0;
		if (sConfigMgr->GetBoolDefault("GM.Security", 1)) {
			if (player->GetSession()->GetSecurity() > 0) {
				PreparedQueryResult result = GMLogic->selectGMPlayerCount(player->GetSession()->GetAccountId());

				Field * ergebnis = result->Fetch();
				int accountid = ergebnis[1].GetInt32();
				int counter = ergebnis[2].GetInt32();

				int maxcount = 0;

				maxcount = sConfigMgr->GetIntDefault("GM.Security.Number", 50);
				if (counter >= maxcount) {
					std::string accountname = "";
					accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
					sWorld->BanAccount(BAN_ACCOUNT, accountname, 0, "To many bad Decisions", "AvariusCore");
					std::ostringstream ss;
					std::ostringstream tt;
					std::ostringstream uu;
					ss << "Gamemaster " << player->GetSession()->GetPlayerName() << " has been banned by Core.";
					tt << "Reason: To many Failures with Cheating Commands. This is a friedly Reminder for the whole Team.";
					uu << "Read and unterstand the Rules of your Server!";
					sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
					sWorld->SendGMText(LANG_GM_BROADCAST, tt.str().c_str());
					sWorld->SendGMText(LANG_GM_BROADCAST, uu.str().c_str());
					return;
				}
				return;
			}
			return;
		}
		return;
	}

};


class DoupleXP : public PlayerScript
{
public:
	DoupleXP() : PlayerScript("DoupleXP"){}
    
	void OnGiveXP(Player* player, uint32& amount, Unit* /*victim*/)
	{
		CustomXP * customxp = 0;
		
		int xpvalue = 0;
		xpvalue = customxp->getCustomXPValue(player->GetGUID());

		//Custom XP is on, check if double xp is on.
		if (sConfigMgr->GetBoolDefault("Custom.XP", 1)) {

			if (player->getLevel() < 80) {
				//Check if Xp Weekend is on
				if (sConfigMgr->GetBoolDefault("XP.Weekend.Active", true)) {

					int32 xpweekendrate = sConfigMgr->GetIntDefault("XP.Weekend.Rate", 2);

					boost::gregorian::date date(boost::gregorian::day_clock::local_day());
					if (date.day_of_week() == boost::date_time::Friday ||
						date.day_of_week() == boost::date_time::Saturday ||
						date.day_of_week() == boost::date_time::Sunday)
					{

						if (player->getLevel() < 80) {
							int xpvalue = customxp->getCustomXPValue(player->GetGUID());

							amount = (amount *xpvalue)* xpweekendrate;
							ChatHandler(player->GetSession()).PSendSysMessage("XP Weekend actice. You get: %u", amount,
								player->GetName());

							return;
						}

						return;
					}


					if (date.day_of_week() == boost::date_time::Monday ||
						date.day_of_week() == boost::date_time::Tuesday ||
						date.day_of_week() == boost::date_time::Wednesday || date.day_of_week() == boost::date_time::Thursday)
					{
						if (player->getLevel() < 80) {
							int xpvalue = customxp->getCustomXPValue(player->GetGUID());
							amount = amount * xpvalue;
							return;
						}
						return;
					}

					//Should never be reached.
					else {
						amount = amount* xpvalue;
						return;
					}
				}

				//XP Weekend is offline
				else {
					amount = amount * xpvalue;
				}

			}
			else {
				return;
			}

		}
		
		//Custom XP is off , but maybe double XP is on.
		else {

			//Check if Xp Weekend is on
			if (sConfigMgr->GetBoolDefault("XP.Weekend.Active", true)) {

				int32 xpweekendrate = sConfigMgr->GetIntDefault("XP.Weekend.Rate", 2);

				boost::gregorian::date date(boost::gregorian::day_clock::local_day());
				if (date.day_of_week() == boost::date_time::Friday ||
					date.day_of_week() == boost::date_time::Saturday ||
					date.day_of_week() == boost::date_time::Sunday)
				{

					if (player->getLevel() < 80) {
					
						amount = amount * xpweekendrate;
						ChatHandler(player->GetSession()).PSendSysMessage("XP Weekend actice. You get: %u", amount,
							player->GetName());

						return;
					}

					return;
				}


				if (date.day_of_week() == boost::date_time::Monday ||
					date.day_of_week() == boost::date_time::Tuesday ||
					date.day_of_week() == boost::date_time::Wednesday || date.day_of_week() == boost::date_time::Thursday)
				{
					if (player->getLevel() < 80) {
						return;
					}
					return;
				}


				else {
					return;
				}
			}


			//Xp Weekend is not online
			else {
				return;
			}
			
		}
      
	}
};


class GMIsland : public PlayerScript
{
public:
	GMIsland() : PlayerScript("GMIsland"){}

	void OnUpdateZone(Player* player, uint32 newzone, uint32 newarea){
		
		
			GameEventMgr::ActiveEvents const& ae = sGameEventMgr->GetActiveEventList();
			bool active = ae.find(70) != ae.end();

			if (active == true) {
				return;
			}

			else {
				if (sConfigMgr->GetBoolDefault("GMIsland.Protection", true)) {
					if (newzone == 876 && newarea == 876 && active == false && player->GetSession()->GetSecurity() <2) {
						player->TeleportTo(0, -9773, 2126.72, 15.40, 3.88);
						player->SetPvP(false);
						sWorld->BanCharacter(player->GetSession()->GetPlayerName(),"10800", "GMIsland Hack", "Exitare");
					}
				}
				else {
					return;
				}
			}
	}
};


class fbevent : public PlayerScript
{
public:
	fbevent() : PlayerScript("fbevent") {}

	void OnCreate(Player* player) { 

		GameEventMgr::ActiveEvents const& ae = sGameEventMgr->GetActiveEventList();
		bool active = ae.find(78) != ae.end();
		
		QueryResult anzahl;
		anzahl = CharacterDatabase.PQuery("SELECT count(accountid) FROM fb_event WHERE accountid = '%u'", player->GetSession()->GetAccountId());
		Field *felder = anzahl->Fetch();
		uint32 accountanzahl = felder[0].GetUInt32();
		time_t sek;
		time(&sek);
		uint32 zeit = time(&sek);


		if (active == true && accountanzahl == 0){
			CharacterDatabase.PExecute("UPDATE `characters` set `level` = 80 where guid = '%u'", player->GetGUID());
			CharacterDatabase.PExecute("UPDATE `characters` set `position_x` = -792.84 where guid = '%u'", player->GetGUID());
			CharacterDatabase.PExecute("UPDATE `characters` set `position_y` = -1607.55 where guid = '%u'", player->GetGUID());
			CharacterDatabase.PExecute("UPDATE `characters` set `position_z` = 142.30 where guid = '%u'", player->GetGUID());
			CharacterDatabase.PExecute("UPDATE `characters` set `map` = 0 where guid = '%u'", player->GetGUID());
            CharacterDatabase.PExecute("UPDATE `characters` set `money` = 50000000 where guid = '%u'", player->GetGUID());
			
			
			player->SetFullHealth();
			QueryResult accountname = LoginDatabase.PQuery("SELECT username FROM account where id = %u", player->GetSession()->GetAccountId());
			std::string accname = (*accountname)[0].GetString();

			CharacterDatabase.PExecute("INSERT INTO fb_event (name,guid,accountname,accountid,date) Values ('%s','%u','%s','%u','%u')", player->GetSession()->GetPlayerName(),player->GetGUID() , accname, player->GetSession()->GetAccountId(),zeit);
		}
		
		else{
			return;
		}
		

	}



};





class DuelLog : public PlayerScript
{
public:
	DuelLog() : PlayerScript("DuelLog"){}

	std::ostringstream ss;

	void OnDuelStart(Player* player, Player* pPlayer){
		ss << "|cff54b5ffDuel wurde gestartet mit den Teilnehmern: |r " << ChatHandler(player->GetSession()).GetNameLink() << " |cff54b5ff und |r" << ChatHandler(pPlayer->GetSession()).GetNameLink();
		sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());

	}

};



class Shutdown : public WorldScript
{
public:
	Shutdown() : WorldScript("Shutdown"){}


	void OnStartup(){
		
		std::ostringstream uu;
		uu << MOTD;
		sWorld->SetMotd(uu.str().c_str());
				
	}

};



void AddSC_mixed_scripts()
{
	new fbevent();
	new Announce_NewPlayer();
	new DoupleXP();
	new Shutdown();
	new DuelLog();
	new Logoutcheck();
	new GMIsland();
}
