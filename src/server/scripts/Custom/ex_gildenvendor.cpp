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




class gildenvendor : public CreatureScript
{
public: gildenvendor() : CreatureScript("gildenvendor"){ }


		void gildenhausfrei(Player* player, uint32 id){
			QueryResult result;
			result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", id);
			Field *fields = result->Fetch();
			uint32 gilde = fields[0].GetUInt32();
			if (gilde == 0){
				Gildenhausport(id, player->GetSession()->GetPlayer());
				player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				return;
			}
			else {
				player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
				return;
			}

		}


		void Gildenhausverkauf(Player* player){
			uint32 platzhalter = 0;
			uint32 gilde = player->GetGuildId();

			QueryResult result;
			result = CharacterDatabase.PQuery("SELECT id FROM `guildhouses` WHERE `guildid` = '%u'", gilde);

			if (result){
				Field *fields = result->Fetch();
				uint32 gildenaktuell = fields[0].GetUInt32();

				if (gilde == 0){
					player->GetSession()->SendNotification("Du bist in keiner Gilde");
					return;
				}



				QueryResult ergebnis;
				ergebnis = CharacterDatabase.PQuery("Select leaderguid from `guild` where `guildid` = '%u'", player->GetGuildId());

				Field *feld = ergebnis->Fetch();
				uint32 leaderid = feld[0].GetUInt32();

				uint32 guid = player->GetGUID();

				if (guid == leaderid){
					CharacterDatabase.PExecute("UPDATE guildhouses SET guildid = '%u' WHERE id = '%u'", platzhalter, gildenaktuell);
					player->GetSession()->SendNotification("Das Gildenhaus wurde verkauft.");
					return;
				}
			}

			else {
				player->GetSession()->SendNotification("Deine Gilde besitzt kein Gildenhaus");
			}


		}

		void Gildenhausport(uint32 gildenhausid, Player* chr){

			if (chr->IsInFlight())
			{
				
				chr->GetSession()->SendNotification("Du fliegst");
				//SetSentErrorMessage(true);
				return;
			}

			if (chr->IsInCombat())
			{
				
				chr->GetSession()->SendNotification("Du bist im Kampf");
				
				//SetSentErrorMessage(true);
				return;
			}

			if (chr->GetGuildId() == 0)
			{
				
				chr->GetSession()->SendNotification("Du bist in keiner Gilde.");
				return;
			}

			QueryResult result;
			result = CharacterDatabase.PQuery("SELECT `x`, `y`, `z`, `map` FROM `guildhouses` WHERE `id` = %u", gildenhausid);
			if (!result)
			{
				
				chr->GetSession()->SendNotification("Keine Gildeninformationen hinterlegt.");
				return;
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
			return;

		}

		void Gildenhauszuordnung(uint32 gildenidneu, uint32 hausid, uint32 groesse, uint32 kosten, Player* player){
			
			QueryResult result;
			result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", hausid);
			Field *fields = result->Fetch();
			uint32 gildenidalt = fields[0].GetUInt32();


			QueryResult gildenanzahl = CharacterDatabase.PQuery("SELECT count(guid) FROM guild_member WHERE guildid = %u", gildenidneu);
			Field *felder = gildenanzahl->Fetch();
			uint32 memberanzahlsql = felder[0].GetUInt32();

			
			QueryResult ergebnis;
			ergebnis = CharacterDatabase.PQuery("Select count(guildid) from `guildhouses` where `guildid` = '%u'", gildenidneu);
			uint32 gildeplayer = player->GetGuildId();

			//uint32 memberanzahllimit = groesse;

			Field *feld = ergebnis->Fetch();
			uint32 anzahl = feld[0].GetUInt32();

		
			if (gildenidalt == 0 && anzahl == 0 && gildeplayer != 0 && memberanzahlsql >= groesse){

					if (player->HasItemCount(200000, kosten)){
						player->DestroyItemCount(200000, kosten, true, false);;
						CharacterDatabase.PExecute("UPDATE guildhouses SET `guildid` = '%u' WHERE `id` = '%u'", gildenidneu, hausid);
						player->GetSession()->SendNotification("Du hast das Gildenhaus gekauft.");
						return;
					}
					else{
						player->GetSession()->SendNotification("Du hast nicht genug Gildenhaustoken um dir dieses Gildenhaus zu kaufen.");
						return;
					}
				}
				
			if (memberanzahlsql < groesse){
				player->GetSession()->SendNotification("Deine Gilde ist zu klein.");
				return;
			}

			if (gildenidalt != 0){
				player->GetSession()->SendNotification("Das Gildenhaus ist schon belegt.");
				return;
			}

			if (anzahl != 0){
				player->GetSession()->SendNotification("Deine Gilde besitzt schon ein Gildenhaus.");
				return;
			}

			else {
				player->GetSession()->SendNotification("Error.");
				return;
			}
			

		}


		bool OnGossipHello(Player *player, Creature* _creature)
		{
			uint32 test = player->GetGuildId();
			if (test != 0){
				QueryResult result;
				result = CharacterDatabase.PQuery("Select leaderguid from `guild` where `guildid` = '%u'", player->GetGuildId());

				Field *fields = result->Fetch();
				uint32 leaderid = fields[0].GetUInt32();

				uint32 guid = player->GetGUID();

				if (guid == leaderid){
					player->ADD_GOSSIP_ITEM(7, "Gildenhaus kaufen", GOSSIP_SENDER_MAIN, 0);
					player->ADD_GOSSIP_ITEM(7, "Gildenhaus verkaufen", GOSSIP_SENDER_MAIN, 1);
					player->ADD_GOSSIP_ITEM(7, "Gildenhaus ansehen", GOSSIP_SENDER_MAIN, 120);
					player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());

					return true;
				}

				if (guid != leaderid){
					player->GetSession()->SendNotification("Du bist nicht der Leiter deiner Gilde.");
				}
			}

			if(test == 0){
				player->GetSession()->SendNotification("Du bist in keiner Gilde");
				return true;
			}

			else {
				player->GetSession()->SendNotification("Error.");
				return true;
			}
			
			return true;


		}

		std::ostringstream ss;

		bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction)
		{
			switch (uiAction)
			{
			case 0:
			{
				player->PlayerTalkClass->ClearMenus();
				
				player->ADD_GOSSIP_ITEM(7, "Tauren village at Veiled Sea (Silithus)" , GOSSIP_SENDER_MAIN, 2);
				player->ADD_GOSSIP_ITEM(7, "Fishing outside an Nortshire Abbey", GOSSIP_SENDER_MAIN, 3);
				player->ADD_GOSSIP_ITEM(7, "Troll Village in mountains", GOSSIP_SENDER_MAIN, 4);
				player->ADD_GOSSIP_ITEM(7, "Dwarven village outside Ironforge", GOSSIP_SENDER_MAIN, 5);
				player->ADD_GOSSIP_ITEM(7, "Dwarven village (Arathi Highlands, Forbidding Sea)", GOSSIP_SENDER_MAIN, 6);
				player->ADD_GOSSIP_ITEM(7, "Taruen Camp (Mulgore)", GOSSIP_SENDER_MAIN, 7);
				player->ADD_GOSSIP_ITEM(7, "Shadowfang Keep an outside instance ", GOSSIP_SENDER_MAIN, 8);
				player->ADD_GOSSIP_ITEM(7, "Harbor house outside Stormwind (Elwynn Forest)", GOSSIP_SENDER_MAIN, 9);
				player->ADD_GOSSIP_ITEM(7, "Empty jail between canals (Stormwind)", GOSSIP_SENDER_MAIN, 10);
				player->ADD_GOSSIP_ITEM(7, "Old Ironforge", GOSSIP_SENDER_MAIN, 11);
				player->ADD_GOSSIP_ITEM(7, "Ironforge Airport", GOSSIP_SENDER_MAIN, 12);
				player->ADD_GOSSIP_ITEM(7, "Azshara Crater instance (Alliance entrance)", GOSSIP_SENDER_MAIN, 13);
				player->ADD_GOSSIP_ITEM(7, "Azshara Crater instance (Horde entrance)", GOSSIP_SENDER_MAIN,14);
				player->ADD_GOSSIP_ITEM(7, "Quel'Thalas Tower", GOSSIP_SENDER_MAIN, 15);
				
				player->ADD_GOSSIP_ITEM(7, "2. Seite", GOSSIP_SENDER_MAIN, 78);			
				player->ADD_GOSSIP_ITEM(7, "3. Seite ", GOSSIP_SENDER_MAIN, 79);
				
				

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;

			}break;

			case 78:
			{
				player->PlayerTalkClass->ClearMenus();
				player->ADD_GOSSIP_ITEM(7, "Crashed gnome airplane ", GOSSIP_SENDER_MAIN, 16);
				player->ADD_GOSSIP_ITEM(7, "Zul'Gurub an outside instance ", GOSSIP_SENDER_MAIN, 17);
				player->ADD_GOSSIP_ITEM(7, "Goblin village (Tanaris, South Seas)", GOSSIP_SENDER_MAIN, 18);
				player->ADD_GOSSIP_ITEM(7, "Villains camp outside an Stormwind ", GOSSIP_SENDER_MAIN, 19);
				player->ADD_GOSSIP_ITEM(7, "Stratholm an outside instance", GOSSIP_SENDER_MAIN, 20);
				player->ADD_GOSSIP_ITEM(7, "Kalimdor Hyjal", GOSSIP_SENDER_MAIN, 21);
				player->ADD_GOSSIP_ITEM(7, "The Ring of Valor", GOSSIP_SENDER_MAIN, 22);
				player->ADD_GOSSIP_ITEM(7, "Stonetalon Logging Camp", GOSSIP_SENDER_MAIN, 23);
				player->ADD_GOSSIP_ITEM(7, "Stonetalon Ruins", GOSSIP_SENDER_MAIN, 24);
				player->ADD_GOSSIP_ITEM(7, "Teldrassil Furbold camp", GOSSIP_SENDER_MAIN, 25);
				player->ADD_GOSSIP_ITEM(7, "Wetlands mountain camp", GOSSIP_SENDER_MAIN, 26);
				player->ADD_GOSSIP_ITEM(7, "Ortell's Hideout", GOSSIP_SENDER_MAIN, 27);
				
				player->ADD_GOSSIP_ITEM(7, "1. Seite", GOSSIP_SENDER_MAIN, 0);
				player->ADD_GOSSIP_ITEM(7, "3. Seite ", GOSSIP_SENDER_MAIN, 79);

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;
			}break;


			case 79:
			{

				player->PlayerTalkClass->ClearMenus();
				player->ADD_GOSSIP_ITEM(7, "Stranglethorn Secret Cave", GOSSIP_SENDER_MAIN, 28);
				player->ADD_GOSSIP_ITEM(7, "Karazhan Smiley", GOSSIP_SENDER_MAIN, 29);
				player->ADD_GOSSIP_ITEM(7, "Well of the Forgotten", GOSSIP_SENDER_MAIN, 30);
				player->ADD_GOSSIP_ITEM(7, "Undercity Top Tier", GOSSIP_SENDER_MAIN, 31);
				player->ADD_GOSSIP_ITEM(7, "Stormwind Cut-Throat Alley", GOSSIP_SENDER_MAIN, 32);
				player->ADD_GOSSIP_ITEM(7, "Forgotten gnome camp", GOSSIP_SENDER_MAIN, 33);
				player->ADD_GOSSIP_ITEM(7, "Outland Nagrand : Tomb", GOSSIP_SENDER_MAIN, 34);
				player->ADD_GOSSIP_ITEM(7, "Outland Nagrand: Challe's Home for Little Tykes", GOSSIP_SENDER_MAIN, 35);
				player->ADD_GOSSIP_ITEM(7, "Outland Netherstorm: Nova's Shrine", GOSSIP_SENDER_MAIN, 36);
				player->ADD_GOSSIP_ITEM(7, "Wald von Elwynn", GOSSIP_SENDER_MAIN, 37);
				player->ADD_GOSSIP_ITEM(7, "Troll Village in mountains 2 (Darkshore)", GOSSIP_SENDER_MAIN, 38);

				player->ADD_GOSSIP_ITEM(7, "1. Seite", GOSSIP_SENDER_MAIN, 0);
				player->ADD_GOSSIP_ITEM(7, "2. Seite ", GOSSIP_SENDER_MAIN, 78);

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;
			}break;

			case 120:
			{
				player->PlayerTalkClass->ClearMenus();

				player->ADD_GOSSIP_ITEM(7, "Tauren village at Veiled Sea (Silithus)", GOSSIP_SENDER_MAIN, 39);
				player->ADD_GOSSIP_ITEM(7, "Fishing outside an Nortshire Abbey", GOSSIP_SENDER_MAIN, 40);
				player->ADD_GOSSIP_ITEM(7, "Troll Village in mountains", GOSSIP_SENDER_MAIN, 41);
				player->ADD_GOSSIP_ITEM(7, "Dwarven village outside Ironforge", GOSSIP_SENDER_MAIN, 42);
				player->ADD_GOSSIP_ITEM(7, "Dwarven village (Arathi Highlands, Forbidding Sea)", GOSSIP_SENDER_MAIN, 81);
				player->ADD_GOSSIP_ITEM(7, "Taruen Camp (Mulgore)", GOSSIP_SENDER_MAIN, 43);
				player->ADD_GOSSIP_ITEM(7, "Shadowfang Keep an outside instance ", GOSSIP_SENDER_MAIN, 44);
				player->ADD_GOSSIP_ITEM(7, "Harbor house outside Stormwind (Elwynn Forest)", GOSSIP_SENDER_MAIN, 45);
				player->ADD_GOSSIP_ITEM(7, "Empty jail between canals (Stormwind)", GOSSIP_SENDER_MAIN, 46);
				player->ADD_GOSSIP_ITEM(7, "Old Ironforge", GOSSIP_SENDER_MAIN, 47);
				player->ADD_GOSSIP_ITEM(7, "Ironforge Airport", GOSSIP_SENDER_MAIN, 48);
				player->ADD_GOSSIP_ITEM(7, "Azshara Crater instance (Alliance entrance)", GOSSIP_SENDER_MAIN, 49);
				player->ADD_GOSSIP_ITEM(7, "2. Seite", GOSSIP_SENDER_MAIN, 75);	
				player->ADD_GOSSIP_ITEM(7, "3. Seite", GOSSIP_SENDER_MAIN, 76);				
				player->ADD_GOSSIP_ITEM(7, "4. Seite", GOSSIP_SENDER_MAIN, 77);
				


				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;

			}break;


			case 75:
			{

				player->PlayerTalkClass->ClearMenus();
				player->ADD_GOSSIP_ITEM(7, "Azshara Crater instance (Horde entrance)", GOSSIP_SENDER_MAIN, 50);
				player->ADD_GOSSIP_ITEM(7, "Quel'Thalas Tower", GOSSIP_SENDER_MAIN, 51);
				player->ADD_GOSSIP_ITEM(7, "Crashed gnome airplane ", GOSSIP_SENDER_MAIN, 52);
				player->ADD_GOSSIP_ITEM(7, "Zul'Gurub an outside instance ", GOSSIP_SENDER_MAIN, 53);
				player->ADD_GOSSIP_ITEM(7, "Goblin village (Tanaris, South Seas)", GOSSIP_SENDER_MAIN, 54);
				player->ADD_GOSSIP_ITEM(7, "Villains camp outside an Stormwind ", GOSSIP_SENDER_MAIN, 55);
				player->ADD_GOSSIP_ITEM(7, "Stratholm an outside instance", GOSSIP_SENDER_MAIN, 56);
				player->ADD_GOSSIP_ITEM(7, "Kalimdor Hyjal", GOSSIP_SENDER_MAIN, 57);
				player->ADD_GOSSIP_ITEM(7, "The Ring of Valor", GOSSIP_SENDER_MAIN, 58);
				player->ADD_GOSSIP_ITEM(7, "Stonetalon Logging Camp", GOSSIP_SENDER_MAIN, 59);
				player->ADD_GOSSIP_ITEM(7, "Stonetalon Ruins", GOSSIP_SENDER_MAIN, 60);
				player->ADD_GOSSIP_ITEM(7, "Teldrassil Furbold camp", GOSSIP_SENDER_MAIN, 61);

				player->ADD_GOSSIP_ITEM(7, "1. Seite", GOSSIP_SENDER_MAIN, 120);
				player->ADD_GOSSIP_ITEM(7, "3. Seite", GOSSIP_SENDER_MAIN, 76);
				player->ADD_GOSSIP_ITEM(7, "4. Seite", GOSSIP_SENDER_MAIN, 77);

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;
			}break;


			case 76:
			{
				player->PlayerTalkClass->ClearMenus();
				
				player->ADD_GOSSIP_ITEM(7, "Wetlands mountain camp", GOSSIP_SENDER_MAIN, 62);
				player->ADD_GOSSIP_ITEM(7, "Ortell's Hideout", GOSSIP_SENDER_MAIN, 63);
				player->ADD_GOSSIP_ITEM(7, "Stranglethorn Secret Cave", GOSSIP_SENDER_MAIN, 64);
				player->ADD_GOSSIP_ITEM(7, "Karazhan Smiley", GOSSIP_SENDER_MAIN, 65);
				player->ADD_GOSSIP_ITEM(7, "Well of the Forgotten", GOSSIP_SENDER_MAIN, 66);
				player->ADD_GOSSIP_ITEM(7, "Undercity Top Tier", GOSSIP_SENDER_MAIN, 67);
				player->ADD_GOSSIP_ITEM(7, "Stormwind Cut-Throat Alley", GOSSIP_SENDER_MAIN, 68);
				player->ADD_GOSSIP_ITEM(7, "Forgotten gnome camp", GOSSIP_SENDER_MAIN, 69);
				player->ADD_GOSSIP_ITEM(7, "Outland Nagrand : Tomb", GOSSIP_SENDER_MAIN, 70);
				player->ADD_GOSSIP_ITEM(7, "Outland Nagrand: Challe's Home for Little Tykes", GOSSIP_SENDER_MAIN, 71);
				player->ADD_GOSSIP_ITEM(7, "Outland Netherstorm: Nova's Shrine", GOSSIP_SENDER_MAIN, 72);
				player->ADD_GOSSIP_ITEM(7, "Wald von Elwynn", GOSSIP_SENDER_MAIN, 73);
				player->ADD_GOSSIP_ITEM(7, "Troll Village in mountains 2 (Darkshore)", GOSSIP_SENDER_MAIN, 74);

				player->ADD_GOSSIP_ITEM(7, "1. Seite", GOSSIP_SENDER_MAIN, 120);
				player->ADD_GOSSIP_ITEM(7, "2. Seite", GOSSIP_SENDER_MAIN, 75);
				player->ADD_GOSSIP_ITEM(7, "4. Seite", GOSSIP_SENDER_MAIN, 77);

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;
			}

			case 77:
			{

				player->PlayerTalkClass->ClearMenus();
				

				player->ADD_GOSSIP_ITEM(7, "1. Seite", GOSSIP_SENDER_MAIN, 120);
				player->ADD_GOSSIP_ITEM(7, "2. Seite", GOSSIP_SENDER_MAIN, 75);
				player->ADD_GOSSIP_ITEM(7, "3. Seite", GOSSIP_SENDER_MAIN, 76);

				player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
				return true;
			}break;
			


			case 39:
			{
				/*QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 2);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();*/

				gildenhausfrei(player->GetSession()->GetPlayer() , 2);
				/*if (gilde == 0){
					Gildenhausport(2, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}*/
			}break;

			case 40:
			{

				gildenhausfrei(player->GetSession()->GetPlayer(), 3);
				/*QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 3);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(3, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}*/
			}break;

			case 41:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 4);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(4, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 42:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 5);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(5, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 43:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 7);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(7, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 44:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 8);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(8, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 45:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 9);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(9, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 46:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 10);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(10, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 47:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 11);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(11, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}

				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 48:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 12);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(12, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 49:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 13);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(13, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 50:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 14);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(14, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 51:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u",15);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(15, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 52:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 16);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(16, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 53:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 17);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(17, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 54:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 18);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(18, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 55:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 19);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(19, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 56:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 20);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(20, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 57:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 21);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(21, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 58:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 22);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(22, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 59:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 23);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(23, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 60:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 24);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(24, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 61:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 25);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(25, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 62:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 26);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(26, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 63:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 27);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(27, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 64:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 28);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(28, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 65:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 29);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(29, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 66:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 30);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(30, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 67:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 31);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(31, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 68:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 32);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(32, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 69:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 33);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(33, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 70:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 34);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(34, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 71:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u",35);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(35, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 72:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 36);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(36, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;
			
			case 73:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 37);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(37, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 74:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 38);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(38, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;

			case 80:
			{
				uint32 gildenid = player->GetGuildId();
				// 1: gildenID , 2: GildenhausID ,	3: Kosten ,   4: Playerarray
				Gildenhauszuordnung(gildenid, 6, 10, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 81:
			{
				QueryResult result;
				result = CharacterDatabase.PQuery("SELECT guildid FROM `guildhouses` WHERE `id` = %u", 6);
				Field *fields = result->Fetch();
				uint32 gilde = fields[0].GetUInt32();
				if (gilde == 0){
					Gildenhausport(6, player->GetSession()->GetPlayer());
					player->GetSession()->SendNotification("Du schaust dir nun das Gildenhaus an.");
				}


				else {
					player->GetSession()->SendNotification("Du bist in einer Gilde bzw das Gildenhaus ist schon belegt.");
					return true;
				}
			}break;



			case 1:
			{
				Gildenhausverkauf(player->GetSession()->GetPlayer());
			}break;


			//Tauren Village at Veiled Sea
			case 2:
			{
				uint32 gildenid = player->GetGuildId();
				Gildenhauszuordnung(gildenid, 2, 10 , 30,player->GetSession()->GetPlayer());	
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			//Fishing outside an Nortshire Abbey
			case 3:
			{
				uint32 gildenid = player->GetGuildId();
				// 1: gildenID , 2: GildenhausID ,	3: Groesse , 4:Kosten  5: Playerarray
				Gildenhauszuordnung(gildenid, 3, 10 ,30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			//Trollvillage in mountains
			case 4:
			{
				uint32 gildenid = player->GetGuildId();
				// 1: gildenID , 2: GildenhausID ,	3: Kosten ,   4: Playerarray
				Gildenhauszuordnung(gildenid, 4, 10 ,30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			//Dwarven Village
			case 5:
			{
				uint32 gildenid = player->GetGuildId();
				// 1: gildenID , 2: GildenhausID ,	3: Kosten ,   4: Playerarray
				Gildenhauszuordnung(gildenid,5, 10 , 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 6:
			{
				uint32 gildenid = player->GetGuildId();
				// Dwarven village (Arathi Highlands, Forbidding Sea)
				Gildenhauszuordnung(gildenid, 6, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 7:
			{
				uint32 gildenid = player->GetGuildId();
				// Tauren camp (Mulgore, Red Rock)
				Gildenhauszuordnung(gildenid, 7, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 8:
			{
				uint32 gildenid = player->GetGuildId();
				// Shadowfang Keep an outside instance (Silverpine Forest)
				Gildenhauszuordnung(gildenid, 8, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 9:
			{
				uint32 gildenid = player->GetGuildId();
				// Harbor house outside Stormwind (Elwynn Forest) 
				Gildenhauszuordnung(gildenid, 9, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 10:
			{
				uint32 gildenid = player->GetGuildId();
				// Empty jail between canals (Stormwind)
				Gildenhauszuordnung(gildenid, 10, 25, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();

			}break;


			case 11:
			{
				uint32 gildenid = player->GetGuildId();
				// Old Ironforge
				Gildenhauszuordnung(gildenid, 11, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 12:
			{
				uint32 gildenid = player->GetGuildId();
				// Ironforge Airport
				Gildenhauszuordnung(gildenid, 12, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 13:
			{
				uint32 gildenid = player->GetGuildId();
				// Azshara Crater instance (Alliance entrance)
				Gildenhauszuordnung(gildenid, 13, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 14:
			{
				uint32 gildenid = player->GetGuildId();
				// Azshara Crater instance (Horde entrance)
				Gildenhauszuordnung(gildenid, 14, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 15:
			{
				uint32 gildenid = player->GetGuildId();
				// QuelThalas Tower
				Gildenhauszuordnung(gildenid, 15, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 16:
			{
				uint32 gildenid = player->GetGuildId();
				// Crashed gnome airplane (between Dun Morogh and Searing Gorge)
				Gildenhauszuordnung(gildenid, 16, 25, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 17:
			{
				uint32 gildenid = player->GetGuildId();
				// ZulGurub an outside instance (Stranglethorn Vale)
				Gildenhauszuordnung(gildenid, 17, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 18:
			{
				uint32 gildenid = player->GetGuildId();

				// Goblin village (Tanaris, South Seas)
				Gildenhauszuordnung(gildenid, 18, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 19:
			{
				uint32 gildenid = player->GetGuildId();
				// Villains camp outside an Stormwind (Elwynn Forest)
				Gildenhauszuordnung(gildenid, 19, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 20:
			{
				uint32 gildenid = player->GetGuildId();
				// Stratholm an outside instance
				Gildenhauszuordnung(gildenid, 20, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 21:
			{
				uint32 gildenid = player->GetGuildId();

				// Kalimdor Hyjal (Aka World Tree)
				Gildenhauszuordnung(gildenid, 21, 50, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 22:
			{
				uint32 gildenid = player->GetGuildId();
				// The Ring of Valor (Aka. Orgrimmar Arena)
				Gildenhauszuordnung(gildenid, 22, 10, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 23:
			{
				uint32 gildenid = player->GetGuildId();
				// Stonetalon Logging Camp
				Gildenhauszuordnung(gildenid, 23, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			
			case 24:
			{
				uint32 gildenid = player->GetGuildId();

				// Stonetalon Ruins
				Gildenhauszuordnung(gildenid, 24, 15, 25, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 25:
			{
				uint32 gildenid = player->GetGuildId();
				// Teldrassil Furbold camp
				Gildenhauszuordnung(gildenid, 25, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 26:
			{
				uint32 gildenid = player->GetGuildId();

				// Wetlands mountain camp -> würde ich nicht verwenden!!! (oder für eine 1-Mann Gilde *gg*)
				//Gildenhauszuordnung(gildenid, 26, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 27:
			{
				uint32 gildenid = player->GetGuildId();
				// Ortells Hideout
				Gildenhauszuordnung(gildenid, 27, 20, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 28:
			{
				uint32 gildenid = player->GetGuildId();

				// Stranglethorn Secret Cave
				Gildenhauszuordnung(gildenid, 28, 20, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;


			case 29:
			{
				uint32 gildenid = player->GetGuildId();
				// Karazhan Smiley -> würde ich nicht verwenden -> Man versperrt damit den mit Absicht verbauten Weg von Blizz!!!
				//Gildenhauszuordnung(gildenid, 29, 10, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
				
			}break;


			case 30:
			{
				uint32 gildenid = player->GetGuildId();
				// Well of the Forgotten (Aka. Karazhan Crypt or Lower Karazhan)
				Gildenhauszuordnung(gildenid, 30, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 31:
			{
				uint32 gildenid = player->GetGuildId();
				// Undercity Top Tier -> bitte nicht verwenden, ich wüsste nicht wie man das sichern sollte + von außen sieht man rein!
				//Gildenhauszuordnung(gildenid, 31, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 32:
			{
				uint32 gildenid = player->GetGuildId();
				// Stormwind Cut-Throat Alley -> direkt in SW...
				//Gildenhauszuordnung(gildenid, 32, 10, 30, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 33:
			{
				uint32 gildenid = player->GetGuildId();
				// Forgotten gnome camp
				Gildenhauszuordnung(gildenid, 33, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 34:
			{
				uint32 gildenid = player->GetGuildId();
				// Outland Nagrand : Tomb
				Gildenhauszuordnung(gildenid, 34, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 35:
			{
				uint32 gildenid = player->GetGuildId();
				// Outland Nagrand: Challes Home for Little Tykes -> NICHT verwenden, QUEST Gebiet!!!
				//Gildenhauszuordnung(gildenid, 35, 25, 40, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 36:
			{
				uint32 gildenid = player->GetGuildId();
				// Outland Netherstorm: Novas Shrine
				Gildenhauszuordnung(gildenid, 36, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 37:
			{
				uint32 gildenid = player->GetGuildId();
				// Wald von Elwynn
				Gildenhauszuordnung(gildenid, 37, 10, 20, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			case 38:
			{
				uint32 gildenid = player->GetGuildId();
				// Troll Village in mountains 2 (Darkshore) -> Ist schon oben verwendet! Troll Dorf!
				//Gildenhauszuordnung(gildenid, 38, 40, 50, player->GetSession()->GetPlayer());
				player->PlayerTalkClass->SendCloseGossip();
			}break;

			}
            return true;
		}

};



void AddSC_gildenvendor()
{
	new gildenvendor();
}
