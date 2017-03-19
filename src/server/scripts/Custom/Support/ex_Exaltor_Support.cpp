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
#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomCouponSystem.h>


#define PROFESSION_COST 20



class npc_first_char : public CreatureScript
{
		public: npc_first_char() : CreatureScript("npc_first_char"){ }
		
				
			
				struct npc_first_charAI : public ScriptedAI
				{
					npc_first_charAI(Creature* creature) : ScriptedAI(creature) { }
					
					uint32 ticktimer;
					uint32 actualplayer = 0;

					void Reset() {
						ticktimer = 1000;
					}


					void UpdateAI(uint32 diff) 
					{
						CustomCharacterSystem * CharacterSystem = 0;
						if (ticktimer <= diff) {
							if (Player * player = me->SelectNearestPlayer(10.0f)) {
								if (actualplayer != player->GetGUID()) {
									bool playerisQualified = CharacterSystem->checkifPlayerisQualifiedforFirstCharacter(player->GetSession()->GetPlayer());
									
									if (playerisQualified) {
										std::ostringstream tt;
										tt << "Hi " << player->GetSession()->GetPlayerName() << "! Your First Character is empty! Come to me to get one!";
										std::string msg = tt.str().c_str();
										me->Yell(msg, LANG_UNIVERSAL, nullptr);
										actualplayer = player->GetGUID();
										return;
									}

									if (player->HasItemCount(34047, 1, false)) {
										std::ostringstream tt;
										tt << "Hi " << player->GetSession()->GetPlayerName() << "! You are a Betatester! Let me kneel in front of you!";
										std::string msg = tt.str().c_str();
										me->Yell(msg, LANG_UNIVERSAL, nullptr);
										me->HandleEmoteCommand(EMOTE_STATE_KNEEL);
										actualplayer = player->GetGUID();
										return;
									}

									std::ostringstream tt;
									tt << "Hi " << player->GetSession()->GetPlayerName();
									std::string msg = tt.str().c_str();
									me->Yell(msg, LANG_UNIVERSAL, nullptr);
									actualplayer = player->GetGUID();
									return;
								}
							
							}
						}
						else {
							ticktimer -= diff;
						}
					}

				};

				CreatureAI * GetAI(Creature * creature) const 
				{
					return new npc_first_charAI(creature);
				}



				bool OnGossipHello(Player *player, Creature* _creature)
				{
					CustomCharacterSystem * CharacterSystem = 0;
					//test if this is possible in Fucntion
					if (sConfigMgr->GetBoolDefault("Exaltor.Activate", true)) {
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Information and Help", GOSSIP_SENDER_MAIN, 0, "", 0, false);
						if (sConfigMgr->GetBoolDefault("First.Character", true)) {
							bool qualified = CharacterSystem->checkifPlayerisQualifiedforFirstCharacter(player->GetSession()->GetPlayer()); 
							if(qualified){
								player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Get the First Character!", GOSSIP_SENDER_MAIN, 1, "", 0, false);
							}
							
						}

						if (sConfigMgr->GetBoolDefault("Exaltor.Features", true)) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Features", GOSSIP_SENDER_MAIN, 3, "", 0, false);
						}
						
						player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
						return true;

					}


					else {
						_creature->SetPhaseMask(2, true);
						player->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
						return true;
					}
				}

			
				bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction)
				{
					CustomCharacterSystem* CharacterSystem = 0;
					CustomCouponSystem * CouponSystem = 0;
					switch (uiAction)
					{

						//First Character Single
					case 1:
					{
						CharacterSystem->playerGiveFirstCharacter(player->GetSession()->GetPlayer());
						return true;

					}break;

					//First Character Guild 
				
					case 3:
					{
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Level 80 Equipment.", GOSSIP_SENDER_MAIN, 4, "", 0, false);
						if (sConfigMgr->GetBoolDefault("Exaltor.Professions", true)) {
							//player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Max your Professions! ", GOSSIP_SENDER_MAIN, 5, "", 0, false);
						}

						if (sConfigMgr->GetBoolDefault("Exaltor.Coupon.Generate", true)) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Generate Coupon", GOSSIP_SENDER_MAIN, 6, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Generate Coupon for a Friend!", GOSSIP_SENDER_MAIN, 7, "", 0, false);
						}

						if (sConfigMgr->GetBoolDefault("Exaltor.Level", true)) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Buy Level", GOSSIP_SENDER_MAIN, 8, "", 0, false);
						}

						bool checkifPlayerhasGetLob = false;
						checkifPlayerhasGetLob = CharacterSystem->checkIfPlayerGetPlayTimeReward(200, player->GetGUID());

						if (!checkifPlayerhasGetLob && player->GetTotalPlayedTime() > 720000) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Please give me the 200h Playtime Reward!", GOSSIP_SENDER_MAIN, 9, "", 0, false);
						}
						if (player->GetSession()->GetSecurity() == 3) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Aufwertungen einsehen", GOSSIP_SENDER_MAIN, 10, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Wandervolk", GOSSIP_SENDER_MAIN, 9504, "", 11, false);
						}


						player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
						return true;
					}break;


					case 4:
					{
						return true;
					}break;

					case 5:
					{
						player->PlayerTalkClass->SendGossipMenu(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
						player->PlayerTalkClass->ClearMenus();

						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Mining", GOSSIP_SENDER_MAIN, 200, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Schneiderei", GOSSIP_SENDER_MAIN, 201, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Schmiedekunst", GOSSIP_SENDER_MAIN, 202, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Kraeuterkunde", GOSSIP_SENDER_MAIN, 203, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Kuerschner", GOSSIP_SENDER_MAIN, 204, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Lederer", GOSSIP_SENDER_MAIN, 205, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Juwelierskunst", GOSSIP_SENDER_MAIN, 206, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Alchemie", GOSSIP_SENDER_MAIN, 207, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Verzauberkunst", GOSSIP_SENDER_MAIN, 208, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Inschriftenkunde", GOSSIP_SENDER_MAIN, 209, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Ingenieurskunst", GOSSIP_SENDER_MAIN, 210, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Zu den Features", GOSSIP_SENDER_MAIN, 211, "", 0, false);

						player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
						return true;
					}break;

					case 6:
					{
						CouponSystem->playerCouponGenerationAndRedeeming(player->GetSession()->GetPlayer(), "Generate and Redeem code at Exaltor");
						
					}break;


					case 7:
					{
						CouponSystem->playerCouponGerationForAFriend(player->GetSession()->GetPlayer(), "Generate a couponcode for a friend a Exaltor!");
						return true;
					}break;


					case 8:
					{
						player->PlayerTalkClass->SendGossipMenu(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "1 Level", GOSSIP_SENDER_MAIN, 300, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "5 Level", GOSSIP_SENDER_MAIN, 301, "", 0, false);
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Level up to 80!", GOSSIP_SENDER_MAIN, 302, "", 0, false);
						player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
						return true;
						
					}break;

					case 300:
					{
						CharacterSystem->givePlayerLevelWithCurrency(player->GetSession()->GetPlayer(), 2, 1,"Buy 1 Level at Exaltor!");
						return true;
					}break;


					case 301:
					{
						CharacterSystem->givePlayerLevelWithCurrency(player->GetSession()->GetPlayer(), 4, 5,"Buy 5 Level at Exaltor!");
						return true;
					}break;

					case 302:
					{
						CharacterSystem->givePlayerLevelWithCurrency(player->GetSession()->GetPlayer(), 10,  80, "Buy full Levelup to 80 at Exaltor!");
						return true;
					}break;



					//Bergbau
					case 200:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 186, PROFESSION_COST);
						return true;

					}break;

					//Schneiderei
					case 201:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 197, PROFESSION_COST);
						return true;

					}break;


					//Schmiedekunst
					case 202:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 164, PROFESSION_COST);
						return true;


					}break;


					//Kraeuterkunde
					case 203:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 182, PROFESSION_COST);
						return true;


					}break;


					//Kürschner
					case 204:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 393, PROFESSION_COST);
						return true;

					}break;


					//Lederer
					case 205:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 165, PROFESSION_COST);
						return true;


					}break;


					//Juwe
					case 206:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 755, PROFESSION_COST);
						return true;


					}break;



					//Alchemie
					case 207:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 171, PROFESSION_COST);
						return true;

					}break;


					//VZ
					case 208:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 333, PROFESSION_COST);
						return true;


					}break;

					//Inschriftler
					case 209:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 773, PROFESSION_COST);
						return true;


					}break;

					//Ingi
					case 210:
					{
						CharacterSystem->setProfessionSkill(player->GetSession()->GetPlayer(), 202, PROFESSION_COST);
						return true;
					}break;


					return true;

					}

					return true;
				}
        			
};
				






void AddSC_npcfirstchar()
{
	new npc_first_char();
}