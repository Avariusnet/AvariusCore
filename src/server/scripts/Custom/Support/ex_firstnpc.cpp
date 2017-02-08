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
#include "ObjectGuid.h"
#include "ObjectMgr.h"


enum Belohnungen
{
	ASTRALER_KREDIT = 38186,
	FROSTMARKEN = 49426,
	TRIUMPHMARKEN = 47241,
	TITANSTAHLBARREN = 37663,
	SARONITBARREN = 36913,
	GOLDBARREN = 3577,
	EISENBARREN = 3575,
	URSARONIT = 49908,
	TRAUMSPLITTER = 34052,
	AKRTISCHERPELZ = 44128
};


enum Kosten
{
	FIXGUTSCHEIN = 5000,
	VARGUTSCHEIN = 10000,
	PREMIUMGUTSCHEIN = 5000,
	BERUFKOSTEN = 3000,
	MAXLEVEL = 5000,
	LEVELUP1 = 1,
	LEVELUP10 = 5,
	LEVELUP80 = 40

};

enum XP{
	
	ONEH = 500,
	TWOH = 800,
	FIVEH = 1500,
	TENH = 2000,
	ONEDAY = 4000,
	TWODAY = 5000,
	FIVEDAY = 7500,
	TENDAY = 10000

};

class npc_first_char : public CreatureScript
{
		public: npc_first_char() : CreatureScript("npc_first_char"){ }
    
        void Bonusep(Player* player, uint32 kosten, uint32 dauer){
            
            //Insert into Bonusep (player, playerid,start, ende) Values (?,?,?,?)
            
            time_t sek;
            time(&sek);
            uint32 zeit = time(&sek);
            
            uint32 endzeit = zeit+dauer;
            uint32 stundenzahl = dauer / 60 / 60;
            
            if(player->HasEnoughMoney(kosten * GOLD)){
                
                PreparedStatement* update = CharacterDatabase.GetPreparedStatement(CHAR_UPD_BONUS_EP);
                update->setInt32(0, player->GetGUID());
                CharacterDatabase.Execute(update);
                
                PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_BONUS_EP);
                stmt->setString(0, player->GetSession()->GetPlayerName());
                stmt->setInt32(1, player->GetGUID());
                stmt->setInt32(2, zeit);
                stmt->setInt32(3, endzeit);
                stmt->setInt32(4, 1);
                CharacterDatabase.Execute(stmt);
                player->GetSession()->SendNotification("Dein EP-Bonus ist nun aktiv!");
                player->ModifyMoney(-kosten * GOLD);
                std::ostringstream ss;
                ss << "Dein EP-Bonus ist nun fuer " << stundenzahl << " Stunden aktiv.";
                ChatHandler(player->GetSession()).PSendSysMessage(ss.str().c_str(),
                                                                   player->GetName());

                player->PlayerTalkClass->SendCloseGossip();
                return;
            }
            
            else{
                player->GetSession()->SendNotification("Du hast leider nicht genug Gold um dir diesen EP-Bonus zu kaufen.");
                return;
            }
            return;
        }
    
        void gutscheineverteilen(Player* player){
    
            srand(time(NULL));
            int r = rand();
            
            
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
            
            
            uint32 anzahl = 1 + (std::rand() % (15 - 1 + 1));
            
            
            if (r % 10 == 0){
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), ASTRALER_KREDIT, anzahl, str);
                
            }
            
            if (r % 10 == 1){
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), TITANSTAHLBARREN, anzahl, str);
                
            }
            
            if (r % 10 == 2){
                
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), FROSTMARKEN, anzahl, str);
                
            }
            
            if (r % 10 == 3){
                
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), TRIUMPHMARKEN, anzahl, str);
                
            }
            
            if (r % 10 == 4){
                
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), SARONITBARREN, anzahl, str);
            }
            
            if (r % 10 == 5){
                uint32 saroanzahl = 1 + (std::rand() % (3 - 1 + 1));
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), URSARONIT, saroanzahl, str);
            }
            
            if (r % 10 == 6){
                
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), GOLDBARREN, anzahl, str);
            }
            
            if (r % 10 == 7){
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), EISENBARREN, anzahl, str);
                
            }
            
            if (r % 10 == 8){
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), TRAUMSPLITTER, anzahl, str);
            }
            
            if (r % 10 == 9){
                gutscheinzusammenstellen(player->GetSession()->GetPlayer(), AKRTISCHERPELZ, anzahl, str);
            }

            
        }
    
        void levelup(Player* player, uint16 kosten, uint16 maxlevel, uint16 levelerhoehung)
    
        // kosten sind die Kredite die benoetigt werden
        // maxlevel ist höchste Leven ab wann eine Aufwertung nicht durchgefuehrt wird
        // levelerhoehung ist der Wert um den das level erhoeht wird
    
        {
        
			if (player->getLevel() <= maxlevel)
            {
            
                if (player->HasItemCount(38186, kosten, true))
                {
                    player->SetLevel(player->getLevel() + levelerhoehung);
                    player->DestroyItemCount(38186, kosten, true);
                    player->GetSession()->SendNotification("Die Level wurden dir gutgeschrieben.");
					player->PlayerTalkClass->SendCloseGossip();
                    return;
                }
            
                else
                {
                    player->GetSession()->SendNotification("Du hast leider nicht genug Astrale Kredite um dir eine Levelaufwertung zu kaufen.");
					player->PlayerTalkClass->SendCloseGossip();
                    return;
                }
            }
        
            else
            {
                player->GetSession()->SendNotification("Dein Level ist zu hoch.");
                return;
            }
        
        
		}


				void fixgutschein(Player* player, uint32 belohnung, uint32 anzahl, std::string grund ){

					CharacterDatabase.PExecute("INSERT INTO item_codes (code,belohnung,anzahl,benutzt,name,benutztbar) Values ('%s','%u','%u','%u','%s','%u')", grund, belohnung, anzahl, 1, player->GetName(),1);
					Item* item = Item::CreateItem(belohnung, anzahl);
					player->GetSession()->SendNotification("Dein Code wurde generiert und die Belohnung zugesendet!");
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					item->SaveToDB(trans);
					MailDraft("Dein Gutscheincode", "Dein Code wurde erfolgreich eingeloest. Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team").AddItem(item)
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);
					DBeintrag(player->GetSession()->GetPlayer(), "fixgutschein");
					return;
				}


				void gutscheinzusammenstellen(Player* player, uint32 belohnung, uint32 anzahl, std::string str){

					CharacterDatabase.PExecute("INSERT INTO `item_codes` (code,belohnung,anzahl,benutzt,benutztbar) Values ('%s','%u','%u','%u','%u')", str, belohnung, anzahl, 0,1);
					std::ostringstream ss;
                    std::ostringstream tt;
                    
					ss << "Dein Code lautet: " << str << " . Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team";
                    player->GetSession()->SendNotification("Dein Code wurde generiert und dir zugesendet.");
                    
                    
                    
                    tt << "Gutscheincode: " << str;
                    ChatHandler(player->GetSession()).PSendSysMessage(tt.str().c_str(),
                                                                       player->GetName());
					SQLTransaction trans = CharacterDatabase.BeginTransaction();
					MailDraft("Dein Gutscheincode", ss.str().c_str())
						.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
					CharacterDatabase.CommitTransaction(trans);
					DBeintrag(player->GetSession()->GetPlayer(), "Gutschein zum verschenken");
					return;
				}


				void DBeintrag(Player* player, std::string grund){
					CharacterDatabase.PExecute("INSERT INTO firstnpc_log "
						"(grund,spieler, guid)"
						"VALUES ('%s', '%s', '%u')",
						grund, player->GetSession()->GetPlayerName(),player->GetGUID());
					return;

				}

				

				void Berufeskillen(Player* player, uint32 beruf){
					if (player->HasSkill(beruf) && player->HasEnoughMoney(BERUFKOSTEN * GOLD)){
						player->LearnDefaultSkill(beruf, 6);
						//uint32 skill = player->GetSkillValue(beruf);
						player->GetPureMaxSkillValue(beruf);
						player->SetSkill(beruf, player->GetSkillStep(beruf), 450, 450);
						DBeintrag(player->GetSession()->GetPlayer(), "Berufskillen");
						ChatHandler(player->GetSession()).PSendSysMessage("[Beruf System] Dein Beruf wurde hochgesetzt.",
							player->GetName());
						player->ModifyMoney(-BERUFKOSTEN * GOLD);
						player->GetSession()->SendNotification("Dein Beruf wurde hochgesetzt.");
					}

					else {
						ChatHandler(player->GetSession()).PSendSysMessage("[Beruf System] Du hast diesen Beruf leider nicht erlernt.",
							player->GetName());
						return;
					}


				}



				bool OnGossipHello(Player *player, Creature* _creature)
				{
					if (sConfigMgr->GetBoolDefault("NPC.Exaltor", true)) {
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Informationen und Hilfe", GOSSIP_SENDER_MAIN, 0, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Firstausstattung beantragen", GOSSIP_SENDER_MAIN, 1, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Gildenaufwertung 10er", GOSSIP_SENDER_MAIN, 2, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Gildenaufwertung 25er", GOSSIP_SENDER_MAIN, 3, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Features", GOSSIP_SENDER_MAIN, 25, "", 0, false);
						player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
						return true;
						
					}


					else {
						_creature->SetPhaseMask(2,true);
						player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
						return true;
					}


				}

				std::ostringstream ss;

				bool OnGossipSelect(Player * player, Creature * pCreature, uint32 /*uiSender*/, uint32 uiAction)
				{
					switch (uiAction)
					{
					case 1:
					{
						
						uint32 guid = player->GetGUID();

						QueryResult accountres = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
						uint32 accountresint = (*accountres)[0].GetUInt32();
						QueryResult charresult = CharacterDatabase.PQuery("Select count(guid) From characters where account = '%u'", accountresint);
						uint32 charresultint = (*charresult)[0].GetUInt32();

						QueryResult onechar = CharacterDatabase.PQuery("Select count(guid) From first_char where guid = '%u'", guid);
						uint32 onecharint = (*onechar)[0].GetUInt32();

						QueryResult ipadr = LoginDatabase.PQuery("SELECT last_ip FROM account where id = %u", accountresint);
						std::string ipadrint = (*ipadr)[0].GetString();
						QueryResult ipadrcount = LoginDatabase.PQuery("SELECT count(last_ip) FROM account WHERE last_ip = '%s'", ipadrint);
						uint32 ipadrcountint = (*ipadrcount)[0].GetUInt32();


						/*Username*/
						QueryResult guidname = CharacterDatabase.PQuery("SELECT name FROM characters where guid = %u", guid);
						std::string charname = (*guidname)[0].GetString();

						/*Accname*/
						QueryResult accountname = LoginDatabase.PQuery("SELECT username FROM account where id = %u", accountresint);
						std::string accname = (*accountname)[0].GetString();

						/*Acccountanzahl zählen*/
						QueryResult accountanz = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
						uint32 accountanzint = (*accountanz)[0].GetUInt32();
						QueryResult accountgesanz = CharacterDatabase.PQuery("SELECT count(account) FROM first_char WHERE account = '%u'", accountanzint);
						uint32 accountanzgesint = (*accountgesanz)[0].GetUInt32();



						if (charresultint == 1 && ipadrcountint == 1 && onecharint != 1 && accountanzgesint <= 1){

							time_t sek;
							time(&sek);
							uint32 zeit = time(&sek);
							player->GetGUID();
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Deine Aufwertung wurde ausgefuehrt. Viel Spass wuenscht Exitare sowie das MMOwning-Team.",
								player->GetName());

							ss << "|cff54b5ffEine Firstausstattung wurde von |r " << ChatHandler(player->GetSession()).GetNameLink() << " |cff54b5ff in Anspruch genommen!|r";
							sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
							player->PlayerTalkClass->SendCloseGossip();
							player->SetLevel(80);
							player->TeleportTo(0, -792.84, -1607.55, 142.30, 2.33, 0);
							player->AddItem(20400, 4);
							player->SetMoney(50000000);
							player->UpdateSkillsToMaxSkillsForLevel();
							player->UpdateSkillsForLevel();
							DBeintrag(player->GetSession()->GetPlayer(), "Firstaustattung einzel");
                            player->SaveRecallPosition();




							player->PlayerTalkClass->SendCloseGossip();

							CharacterDatabase.PExecute("REPLACE INTO first_char "
								"(guid,Charname, account, Accname, time, guildid,ip) "
								"VALUES ('%u', '%s', %u, '%s', %u, %u, '%s')",
								guid, charname, accountresint, accname, zeit, 0, ipadrint);

							return true;
						}

						else {
							player->GetGUID();
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nDu hast bereits einen anderen Charakter auf diesem Realm oder versuchst mit zu vielen Accounts eine Erstaustattung zu erlangen.\nDiese wird daher abgelehnt.\nMfG Exitare und das MMOwning-Team.",
								player->GetName());
							player->PlayerTalkClass->SendCloseGossip();
							return true;
						}



					}break;

					case 0:
					{
						
						player->PlayerTalkClass->SendGossipMenu(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Einzelausstattung. Wer/Was/Wie?", GOSSIP_SENDER_MAIN, 5,"",0,false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Gildentransfer Wer/Was/Wie?", GOSSIP_SENDER_MAIN, 6, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Meine Aufwertung wurde abgelehnt! Was tun?", GOSSIP_SENDER_MAIN, 7, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Ich moechte einen anderen Charakter ausstatten lassen.", GOSSIP_SENDER_MAIN, 8, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Ein Spieler mit der selben IP moechte eine Charakteraufwertung! Wie geht das?", GOSSIP_SENDER_MAIN, 9, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Was bedeutet Level 80 Equipment?", GOSSIP_SENDER_MAIN, 11, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Was ist das Gutschein generieren?", GOSSIP_SENDER_MAIN, 8000, "", 0, false);
						player->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
						return true;
					}break;


					case 5:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nWer? \nJeder der noch keinen Character auf seinem Account hat. Es muss zwingend der erste Charakter ausgestattet werden. Existiert ein Charakter auf dem Account muss dieser geloescht werden.\nWas?\nEs gibt 5k Gold, 4 Taschen, sowie eine Grundausstattung auf Itemlevel 219.\nWie? \nEinfach auf ""Charakteraufwertung beantragen"" klicken und alles wird in die Wege geleitet.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}

					case 6:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nEine Gildenaufwertung funktioniert praktisch wie eine Einzelaufwertung.Zusaetzlich bekommt ihr jedoch den Reitskill bis zu Schnellem Reiten hochgesetzt. Ihr muesst jedoch in einer Gilde sein und duerft keine Einzelaufwertung beantragt haben. Solltet ihr das getan haben, einfach den Charakter loeschen und neu machen. Ihr muesst die Gilde schon gegruendet haben und Euch auch schon in dieser befinden. Waehlt dann die entsprechende Groesse aus um die Aufwertung zu bekommen.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}

					case 7:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nErst einmal keine Panik. Sollte deine Aufwertung abgelehnt werden, ist entweder ueber deinen Account oder deine IP schon eine Aufwertung erfolgt, der Charakter hat schon eine Aufwertung bekommen oder du hast mehr als 1 Charakter auf diesem Account.\nBeachte bitte: Nur der erste Charakter auf MMOwning darf ausgestattet werden. Solltest du dennoch Probleme haben, gehe bitte ins TS und frage nach Exitare.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}

					case 8:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nDas ist kein Problem. Loesche einfach diesen Charakter und erstelle dir einen neuen. Bedenke aber das du nur 2 Ausstattungen beantragen kannst. Solltest du deinen Charakter also loeschen, hast du nur noch einmal die Moeglichkeit eine Erstaustattung zu beantragen.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}

					case 9:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nUm eine Austattung ueber die gleiche IP vornehmen zu lassen muesst ihr euch BEIDE ins TS begeben. Fragt dort nach einem GM, dieser wird ueberpruefen ob alles fuer eine Ausstattung erfuellt ist und diese dann durchfuehren.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}

					case 11:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nLevel 80 Equipment bedeutet, dass ihr Euch fuer 5000 Gold Level 80 Equipment kaufen koennt. Dies kann mit jedem Character benutzt werden.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}


					case 8000:
					{
						player->GetGUID();
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System]\nFuer 5000 Gold koennt ihr Euch einen Gutscheincode generieren, welcher Euch direkt zugesendet wird. Es gibt dort komplett zufallsgenerierte Belohnungen.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();
						return true;
					}



					case 2:
					{
						uint32 guid = player->GetGUID();

						bool gild = player->GetGuild();

						if (gild)
						{
							QueryResult accountres = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
							uint32 accountresint = (*accountres)[0].GetUInt32();
							QueryResult charresult = CharacterDatabase.PQuery("Select count(guid) From characters where account = '%u'", accountresint);
							uint32 charresultint = (*charresult)[0].GetUInt32();

							/*Gildenselect*/
							QueryResult guildid = CharacterDatabase.PQuery("SELECT guildid FROM guild_member WHERE guid= %u", guid);
							uint32 guildidint = (*accountres)[0].GetUInt32();

							/*Gildenmemberanzahl*/
							QueryResult guildmember = CharacterDatabase.PQuery("SELECT count(guid) FROM guild_member WHERE guildid = %u", guildidint);
							uint32 guildmemberint = (*guildmember)[0].GetUInt32();


							QueryResult onechar = CharacterDatabase.PQuery("Select count(guid) From first_char where guid = '%u'", guid);
							uint32 onecharint = (*onechar)[0].GetUInt32();

							/*Username*/
							QueryResult guidname = CharacterDatabase.PQuery("SELECT name FROM characters where guid = %u", guid);
							std::string charname = (*guidname)[0].GetString();

							/*Accname*/
							QueryResult accountname = LoginDatabase.PQuery("SELECT username FROM account where id = %u", accountresint);
							std::string accname = (*accountname)[0].GetString();

							QueryResult ipadr = LoginDatabase.PQuery("SELECT last_ip FROM account where id = %u", accountresint);
							std::string ipadrint = (*ipadr)[0].GetString();
							/*IPAdresse auslesen*/
							QueryResult ipadrcount = LoginDatabase.PQuery("SELECT count(last_ip) FROM account WHERE last_ip = '%s'", ipadrint);
							uint32 ipadrcountint = (*ipadrcount)[0].GetUInt32();

							time_t seconds;
							seconds = time(NULL);
							uint32 zeit = seconds;


							/*Acccountanzahl zählen*/
							QueryResult accountanz = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
							uint32 accountanzint = (*accountanz)[0].GetUInt32();
							QueryResult accountgesanz = CharacterDatabase.PQuery("SELECT count(account) FROM first_char WHERE account = '%u'", accountanzint);
							uint32 accountanzgesint = (*accountgesanz)[0].GetUInt32();

							if (guildmemberint >= 10 && guildmemberint < 25 && charresultint == 1 && ipadrcountint == 1 && onecharint != 1 && accountanzgesint <= 1){
								player->SetLevel(80);
								player->LearnDefaultSkill(762, 3);
								player->TeleportTo(0, -792.84, -1607.55, 142.30, 2.33, 0);
								player->AddItem(20400, 4);
								player->SetMoney(50000000);
								player->UpdateSkillsToMaxSkillsForLevel();
								player->UpdateSkillsForLevel();

								ss << "|cff54b5ffEine 10er Gildenfirstausstattung wurde von |r " << ChatHandler(player->GetSession()).GetNameLink() << " |cff54b5ff in Anspruch genommen!|r";
								sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
								DBeintrag(player->GetSession()->GetPlayer(), "Firstaustattung 10er");
								CharacterDatabase.PExecute("REPLACE INTO first_char "
									"(guid,Charname, account, Accname, time, guildid,ip) "
									"VALUES ('%u', '%s', %u, '%s', %u, %u, '%s')",
									guid, charname, accountresint, accname, zeit, guildidint, ipadrint);
                                player->SaveRecallPosition();
								return true;


							}

							if (onecharint != 1){
								player->GetSession()->SendNotification("Du hast mehr als einen Charakter auf deinem Account. Es darf nur der ERSTE Charakter ausgestattet werden.");
							}

							if (guildmemberint < 10){
								player->GetSession()->SendNotification("Deine Gilde hat weniger als 10 Gildenmitglieder.");
							}


							else{
								ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Deine Gilde ist nicht neu, hat nicht genug oder zu viele Mitglieder.",
									player->GetName());
								player->PlayerTalkClass->SendCloseGossip();
								return true;
							}


							return true;

						}

						else {
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Tut mir Leid du bist in keiner Gilde.",
								player->GetName());
							player->PlayerTalkClass->SendCloseGossip();
							return false;
						}

					}break;


					case 3:
					{
						uint32 guid = player->GetGUID();
						bool gild = false;
						gild = player->GetGuild();

						if (gild)
						{
							QueryResult accountres = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
							uint32 accountresint = (*accountres)[0].GetUInt32();
							QueryResult charresult = CharacterDatabase.PQuery("Select count(guid) From characters where account = '%u'", accountresint);
							uint32 charresultint = (*charresult)[0].GetUInt32();

							/*Gildenselect*/
							QueryResult guildid = CharacterDatabase.PQuery("SELECT guildid FROM guild_member WHERE guid= %u", guid);
							uint32 guildidint = (*accountres)[0].GetUInt32();

							/*Gildenmemberanzahl*/
							QueryResult guildmember = CharacterDatabase.PQuery("SELECT count(guid) FROM guild_member WHERE guildid = %u", guildidint);
							uint32 guildmemberint = (*guildmember)[0].GetUInt32();


							QueryResult onechar = CharacterDatabase.PQuery("Select count(guid) From first_char where guid = '%u'", guid);
							uint32 onecharint = (*onechar)[0].GetUInt32();

							/*Username*/
							QueryResult guidname = CharacterDatabase.PQuery("SELECT name FROM characters where guid = %u", guid);
							std::string charname = (*guidname)[0].GetString();

							/*Accname*/
							QueryResult accountname = LoginDatabase.PQuery("SELECT username FROM account where id = %u", accountresint);
							std::string accname = (*accountname)[0].GetString();


							QueryResult ipadr = LoginDatabase.PQuery("SELECT last_ip FROM account where id = %u", accountresint);
							std::string ipadrint = (*ipadr)[0].GetString();
							/*IPAdresse auslesen*/
							QueryResult ipadrcount = LoginDatabase.PQuery("SELECT count(last_ip) FROM account WHERE last_ip = '%s'", ipadrint);
							uint32 ipadrcountint = (*ipadrcount)[0].GetUInt32();

							/*Acccountanzahl zählen*/
							QueryResult accountanz = CharacterDatabase.PQuery("SELECT account FROM characters WHERE guid = %u", guid);
							uint32 accountanzint = (*accountanz)[0].GetUInt32();
							QueryResult accountgesanz = CharacterDatabase.PQuery("SELECT count(account) FROM first_char WHERE account = '%u'", accountanzint);
							uint32 accountanzgesint = (*accountgesanz)[0].GetUInt32();

							time_t seconds;
							seconds = time(NULL);
							uint32 zeit = seconds;


							if (guildmemberint > 25 && charresultint == 1 && ipadrcountint == 1 && onecharint != 1 && accountanzgesint <= 1){
								player->SetLevel(80);
								player->LearnDefaultSkill(762, 4);
								player->TeleportTo(0, -866.84, -1551.72, 189.62, 0.79, 0);
								player->AddItem(20400, 4);
								player->SetMoney(50000000);
								player->UpdateSkillsToMaxSkillsForLevel();
								player->UpdateSkillsForLevel();

								ss << "|cff54b5ffEine 25er Gildenfirstausstattung wurde von |r " << ChatHandler(player->GetSession()).GetNameLink() << " |cff54b5ff in Anspruch genommen!|r";
								sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
								CharacterDatabase.PExecute("REPLACE INTO first_char "
									"(guid,Charname, account, Accname, time, guildid,ip) "
									"VALUES ('%u', '%s', %u, '%s', %u, %u, '%s')",
									guid, charname, accountresint, accname, zeit, guildidint, ipadrint);
								DBeintrag(player->GetSession()->GetPlayer(), "Firstaustattung 25er");
                                player->SaveRecallPosition();
								return true;
							}

							if (onecharint != 1){
								player->GetSession()->SendNotification("Du hast mehr als einen Charakter auf deinem Account. Es darf nur der ERSTE Charakter ausgestattet werden.");
							}

							if (guildmemberint < 25){
								player->GetSession()->SendNotification("Deine Gilde hat weniger als 25 Gildenmitglieder.");
							}

							

							else{
								ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Deine Gilde ist nicht neu, oder hat nicht genug oder zu viele Mitglieder.",
									player->GetName());
								player->PlayerTalkClass->SendCloseGossip();
								return true;
							}


							return true;

						}

						else {
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Tut mir Leid du bist in keiner Gilde.",
								player->GetName());
							player->PlayerTalkClass->SendCloseGossip();
							return false;
						}
					}break;


					case 4:
					{
						ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Diese Funktion wird noch implementiert.",
							player->GetName());
						player->PlayerTalkClass->SendCloseGossip();

						return true;

					}break;



					case 10:
					{

						uint32 guid = player->GetGUID();
						uint32 acc = player->GetSession()->GetAccountId();

						if (player->HasEnoughMoney(MAXLEVEL * GOLD)){
							player->GetGUID();
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Deine Aufwertung wurde ausgefuehrt. Viel Spass wuenscht Exitare sowie das MMOwning-Team.",
								player->GetName());

							ss << "|cff54b5ffEine 2t Ausstattung wurde von |r " << ChatHandler(player->GetSession()).GetNameLink() << " |cff54b5ff in Anspruch genommen!|r";
							sWorld->SendGMText(LANG_GM_BROADCAST, ss.str().c_str());
							player->TeleportTo(0, -792.84, -1607.55, 142.30, 2.33, 0);
							player->PlayerTalkClass->SendCloseGossip();
							player->ModifyMoney(-MAXLEVEL * GOLD);
                            player->SaveRecallPosition();
							std::string name = player->GetName();

							CharacterDatabase.PExecute("INSERT INTO zweitausstattung "
								"(uid,spieler, account) "
								"VALUES ('%u', '%s', '%u')",
								guid, name, acc);
							DBeintrag(player->GetSession()->GetPlayer(), "2t Ausstattung");
							return true;
						}

						else {
							ChatHandler(player->GetSession()).PSendSysMessage("[Aufwertungs System] Du hast nicht genug Gold. Du brauchst 5000 Gold um dir dein Equipment zu kaufen.",
								player->GetName());

						}

						return true;
					}break;


					case 12:
					{


						player->PlayerTalkClass->SendGossipMenu(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
						player->PlayerTalkClass->ClearMenus();

						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Bergbau", GOSSIP_SENDER_MAIN, 13, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Schneiderei", GOSSIP_SENDER_MAIN, 14, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Schmiedekunst", GOSSIP_SENDER_MAIN, 15, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Kraeuterkunde", GOSSIP_SENDER_MAIN, 16, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Kuerschner", GOSSIP_SENDER_MAIN, 17, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Lederer", GOSSIP_SENDER_MAIN, 18, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Juwelierskunst", GOSSIP_SENDER_MAIN, 19, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Alchemie", GOSSIP_SENDER_MAIN, 20, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Verzauberkunst", GOSSIP_SENDER_MAIN, 21, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Inschriftenkunde", GOSSIP_SENDER_MAIN, 9000, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Ingenieurskunst", GOSSIP_SENDER_MAIN, 9001, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Zu den Features", GOSSIP_SENDER_MAIN, 25, "", 0, false);
                        
						player->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
						return true;

					}break;


					

					//Bergbau
					case 13:
					{
						
						Berufeskillen(player->GetSession()->GetPlayer(),186);
					
					}break;

					//Schneiderei
					case 14:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 197);
						
					}break;


					//Schmiedekunst
					case 15:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 164);
						
					}break;


					//Kraeuterkunde
					case 16:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 182);
						
					}break;


					//Kürschner
					case 17:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 393);
						
					}break;


					//Lederer
					case 18:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 165);
						
					}break;


					//Juwe
					case 19:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 755);
						
					}break;



					//Alchemie
					case 20:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 171);
						
					}break;


					//VZ
					case 21:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 333);
						
					}break;

					//Inschriftler
					case 9000:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 773);

					}break;

					//Ingi
					case 9001:
					{
						Berufeskillen(player->GetSession()->GetPlayer(), 202);

					}break;


					//XP Boost
					case 22:
					{
						

						player->PlayerTalkClass->SendGossipMenu(DEFAULT_GOSSIP_MESSAGE, pCreature->GetGUID());
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 1 Stunde Kosten: 500 Gold", GOSSIP_SENDER_MAIN, 6000, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 2 Stunden Kosten: 800 Gold", GOSSIP_SENDER_MAIN, 6001, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 5 Stunden Kosten: 1500 Gold", GOSSIP_SENDER_MAIN, 6002, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 10 Stunden Kosten: 2000 Gold", GOSSIP_SENDER_MAIN, 6003, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 1 Tag Kosten: 4000 Gold", GOSSIP_SENDER_MAIN, 6004, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 2 Tage Kosten: 5000 Gold", GOSSIP_SENDER_MAIN, 6005, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 5 Tage Kosten: 7500 Gold", GOSSIP_SENDER_MAIN, 6006, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP Boost: 10 Tage Kosten: 10000 Gold", GOSSIP_SENDER_MAIN, 6007, "", 0, false);
                        
						player->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
						return true;

					}break;
                    
                        
                    case 6000:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), ONEH, 3600);
                    }break;
                    
                    case 6001:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), TWOH, 7200);
                    }break;
                            
                    case 6002:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), FIVEH, 18000);
                    }break;
                        
                    case 6003:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), TENH, 36000);
                    }break;
                            
                    case 6004:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), ONEDAY, 86400);
                    }break;
                    
                    case 6005:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), TWODAY, 172800);
                    }break;
                            
                    case 6006:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), FIVEDAY, 432000);
                    }break;
                            
                    case 6007:
                    {
                        Bonusep(player->GetSession()->GetPlayer(), TENDAY, 864000);
                    }break;
                            
                            
					case 23:
					{
						if (player->HasEnoughMoney(FIXGUTSCHEIN * GOLD)){
							player->ModifyMoney(-FIXGUTSCHEIN * GOLD);
							srand(time(NULL));
							int r = rand();

							std::string grund = "Gutschein";

							uint32 anzahl = 1 + (std::rand() % (5 - 1 + 1));

							if (r % 5 == 0){
								fixgutschein(player->GetSession()->GetPlayer(), ASTRALER_KREDIT, anzahl,grund);
							}

							if (r % 5 == 1){
								CharacterDatabase.PExecute("INSERT INTO item_codes (code,belohnung,anzahl,benutzt,name,benutztbar) Values ('%s','%u','%u','%u','%s')", grund, 9999, anzahl, 1, player->GetName(),1);
								
								player->GetSession()->SendNotification("Dein Code wurde generiert und die Belohnung zugesendet!");
								SQLTransaction trans = CharacterDatabase.BeginTransaction();
								MailDraft("Dein Gutscheincode", "Dein Code wurde erfolgreich eingeloest. Wir wuenschen dir weiterhin viel Spass auf MMOwning. Dein MMOwning-Team").AddMoney(5500 * GOLD)
									.SendMailTo(trans, MailReceiver(player, player->GetGUID()), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
								CharacterDatabase.CommitTransaction(trans);
							}

							if (r % 5 == 2){
								fixgutschein(player->GetSession()->GetPlayer(), FROSTMARKEN, anzahl, grund);
							}

							if (r % 5 == 3){	
								fixgutschein(player->GetSession()->GetPlayer(), TRIUMPHMARKEN, anzahl, grund);
							}

							if (r % 5 == 4){
								fixgutschein(player->GetSession()->GetPlayer(), TITANSTAHLBARREN, anzahl, grund);
							}
						}

						else {
							player->GetSession()->SendNotification("Du hast zu wenig Gold um dir einen Gutschein zu generieren.");
						}


					}break;

					case 25:
					{
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Level 80 Equipment. [Kosten: 5000G]", GOSSIP_SENDER_MAIN, 10, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Berufe skillen [Kosten: 3000 Gold]", GOSSIP_SENDER_MAIN, 12, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Gutschein generieren [Kosten: 5000G]", GOSSIP_SENDER_MAIN, 23, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Gutschein zum Verschenken generieren [Kosten: Premium 5000 / Normal 10.000]", GOSSIP_SENDER_MAIN, 24, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Level kaufen", GOSSIP_SENDER_MAIN, 9500, "", 0, false);
                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "XP-BOOST", GOSSIP_SENDER_MAIN, 22, "", 0, false);

						PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOB);
						stmt->setInt32(0, 100);
						stmt->setInt32(1, player->GetGUID());
						PreparedQueryResult result = CharacterDatabase.Query(stmt);
						if (!result){
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "200h Spielzeitbelohnung", GOSSIP_SENDER_MAIN, 8500, "", 0, false);
						}
						if (player->GetSession()->GetSecurity() == 3){	
							
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Aufwertungen einsehen", GOSSIP_SENDER_MAIN, 4, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Wandervolk", GOSSIP_SENDER_MAIN, 9504, "", 0, false);
						}

						player->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
						return true;
					}break;

					case 24:
					{
                                                
						if (player->HasEnoughMoney(VARGUTSCHEIN * GOLD)){
                           
							player->ModifyMoney(-VARGUTSCHEIN * GOLD);
                            gutscheineverteilen(player->GetSession()->GetPlayer());
							return true;

						}
							
						else{
							player->GetSession()->SendNotification("Du hast nicht genug Gold.");
							ChatHandler(player->GetSession()).PSendSysMessage("[Gutschein System] Du hast nicht genug Gold. Als Besitzer eines Eliteaccounts brauchst du 5000 Gold als normaler Spieler 10.000 Gold.",
								player->GetName());
							return true;
						}
					
                    }break;
                            
                    
                    case 9500:
                    {
                        player->PlayerTalkClass->ClearMenus();
						
						if (player->getLevel() < 80)
						{
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "1 Level aufsteigen. Kosten: 1 Astrale Kredite", GOSSIP_SENDER_MAIN, 9501, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "10 Level aufsteigen.  Kosten: 5 Astrale Kredite.", GOSSIP_SENDER_MAIN, 9502, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Auf Level 80 setzen.  Kosten: 40 Astrale Kredite.", GOSSIP_SENDER_MAIN, 9503, "", 0, false);
                            
                        }
						else {
							player->GetSession()->SendNotification("Du bist schon Level 80.");
						}

                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Zu den Features", GOSSIP_SENDER_MAIN, 25, "", 0, false);
                        player->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
                        return true;
                        

                    }break;
                            
                    case 9501:
                    {
                            
                        levelup(player, LEVELUP1, 79, 1);
						
                        return true;
                            
                    }break;
                            
                        
                    case 9502:
                    {
                        
                        levelup(player, LEVELUP10, 70, 10);
						
                        return true;
                            
                    }break;
                            
                            
                    case 9503:
                    {
                        uint16 abstand = 80 - player->getLevel();
                        // abstand ist der abstand des Spielerlevels zu Level 80
                            
                        levelup(player, LEVELUP80, 80, abstand);
                        return true;
                            
                    }break;

					
					case 9504:
					{
						if (player->HasItemOrGemWithIdEquipped(700523, 1, 4)){
							
							std::ostringstream tt;
							std::string playername = player->GetSession()->GetPlayerName();
							tt << playername << ", ihr seid ein wahrhaft grosser Held! |r";

							pCreature->Yell(tt.str().c_str(), LANG_UNIVERSAL ,NULL);
							pCreature->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);							
							return true;
						}
						return true;

					}break;


					case 8500: {
						if (player->GetTotalPlayedTime() > 720000){
							int32 guid = player->GetGUID();
							player->AddItem(46802, 1);
							CharacterDatabase.PExecute("INSERT INTO lob (zeit,spieler,uid,benutzt) Values ('%u','%s','%u','%u')", 100, player->GetName().c_str(), guid, 1);
							return true;
						}

						player->GetSession()->SendNotification("Du hast noch keine 200h Spielzeit. Deine Spielzeit kannst du mit /played herausfinden.");
						return true;
					}break;


					}
					return true;
				}
					
};
				






void AddSC_npcfirstchar()
{
	new npc_first_char();
}