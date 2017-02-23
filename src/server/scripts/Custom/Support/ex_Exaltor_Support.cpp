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

#define PROFESSION_COST 20


class npc_first_char : public CreatureScript
{
		public: npc_first_char() : CreatureScript("npc_first_char"){ }
    
			
				bool OnGossipHello(Player *player, Creature* _creature)
				{
					//test if this is possible in Fucntion
					if (sConfigMgr->GetBoolDefault("Exaltor.Activate", true)) {
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Information and Help", GOSSIP_SENDER_MAIN, 0, "", 0, false);
						if (sConfigMgr->GetBoolDefault("First.Character", true)) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Get the First Character!", GOSSIP_SENDER_MAIN, 1, "", 0, false);
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Guildtransfer starting 10 Members", GOSSIP_SENDER_MAIN, 2, "", 0, false);
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
					CustomPlayerLog * PlayerLog = 0;
					switch (uiAction)
					{

						//First Character Single
					case 1:
					{
						bool hasPlayerAlreadyFirstChar = true;

						hasPlayerAlreadyFirstChar = CharacterSystem->hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");

						if (hasPlayerAlreadyFirstChar) {
							creature->Say("You already get a first Character!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						bool twotimescharacter = true;
						twotimescharacter = CharacterSystem->countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
						if (twotimescharacter) {
							creature->Say("You already used this Function more than 2 times!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						bool playerHasAlreadyCharacter = true;
						playerHasAlreadyCharacter = CharacterSystem->hasPlayerAlreadyCharacters(player->GetSession()->GetAccountId());
						if (playerHasAlreadyCharacter) {
							creature->Say("You already have more than one Character!", LANG_UNIVERSAL, nullptr);
							return true;
						}


						std::string accountname = "";
						accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
						std::string lastip = "";
						lastip = CharacterSystem->getLastIPbyAccount(player->GetSession()->GetAccountId());
						CharacterSystem->insertNewFirstCharacterforPlayerCount(player->GetGUID(), player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), accountname, 0, lastip);
						CharacterSystem->executeFirstCharacter(player->GetSession()->GetPlayer(), "Create FirstCharacter without guild!");

						return true;

					}break;

					//First Character Guild 
					case 2:
					{
						bool hasPlayerAlreadyFirstChar = true;

						hasPlayerAlreadyFirstChar = CharacterSystem->hasPlayerAlreadyAFirstChar(player->GetSession()->GetAccountId(), "FirstCharacter");

						if (hasPlayerAlreadyFirstChar) {
							creature->Say("You already get a first Character!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						bool twotimescharacter = true;
						twotimescharacter = CharacterSystem->countIfPlayerHasLessTotalOf2FirstCharacters(player->GetSession()->GetAccountId());
						if (twotimescharacter) {
							creature->Say("You already used this Function more than 2 times!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						bool playerHasAlreadyCharacter = true;
						playerHasAlreadyCharacter = CharacterSystem->hasPlayerAlreadyCharacters(player->GetSession()->GetAccountId());
						if (playerHasAlreadyCharacter) {
							creature->Say("You already have more than one Character!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						int guildmember = 0;
						guildmember = CharacterSystem->getGuildMemberCount(player->GetGuildId());

						if (guildmember < 10) {
							creature->Say("Not enough Guild Members! Come again with your Friends!", LANG_UNIVERSAL, nullptr);
							return true;
						}

						int guildcreatedate = 0;
						guildcreatedate = CharacterSystem->getGuildCreateDate(player->GetGuildId());

						if (guildcreatedate == 0) {
							creature->Say("Not Member of a Guild.", LANG_UNIVERSAL, nullptr);
							return true;
						}

						int unixtimestamp = 0;
						unixtimestamp = CharacterSystem->getUnixTimestamp();

						if (unixtimestamp - guildcreatedate > 1209600) {
							creature->Say("Your Guild is older than 2 Weeks. Sorry i cannot grant you this Feature!", LANG_UNIVERSAL, nullptr);
							creature->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);
							return true;
						}

						std::string accountname = "";
						accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
						std::string lastip = "";
						lastip = CharacterSystem->getLastIPbyAccount(player->GetSession()->GetAccountId());
						CharacterSystem->insertNewFirstCharacterforPlayerCount(player->GetGUID(), player->GetSession()->GetPlayerName(), player->GetSession()->GetAccountId(), accountname, player->GetGuildId(), lastip);
						CharacterSystem->executeGuildCharacter(player->GetSession()->GetPlayer(), "Create FirstCharacter with active guild!", guildmember);

						return true;

					}break;

					case 3:
					{
						player->PlayerTalkClass->ClearMenus();
						player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Level 80 Equipment.", GOSSIP_SENDER_MAIN, 4, "", 0, false);
						if (sConfigMgr->GetBoolDefault("Exaltor.Professions", true)) {
							player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Max your Professions! ", GOSSIP_SENDER_MAIN, 5, "", 0, false);
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

						if (player->HasEnoughMoney(5000 * GOLD)) {
							player->ModifyMoney(-5000 * GOLD);
							std::string couponcode = "";
							couponcode = CouponSystem->createNewCouponCode();
							int rewarditem = CouponSystem->getFortuneItem();
							uint32 quantity = 1 + (std::rand() % (15 - 1 + 1));
							CouponSystem->insertNewCouponCodeinDB(couponcode, rewarditem, quantity, 1, 1);
							CharacterSystem->sendPlayerMailwithItem(rewarditem, quantity, "Your CouponCode", "Here is your CouponCode\n Have fun with your Reward. \n Feel free to do all what you want with it!", player->GetSession()->GetPlayer());
							std::string accountname = "";
							accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
							PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Generate private Coupon at Exaltor");

							ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("Your Coupon was created and redeemed.",
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("You should have Mail right now.",
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("Have fun with it, %s", player->GetSession()->GetPlayerName(),
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
								player->GetName());

							return true;
						}

						else {
							creature->Say("Your Bag seems to be very empty! Come again if you had enoungh money to pay me!", LANG_UNIVERSAL, nullptr);
							return true;
						}
						return true;
					}break;


					case 7:
					{
						if (player->HasEnoughMoney(5000 * GOLD)) {
							player->ModifyMoney(-5000 * GOLD);
							std::string couponcode = "";
							couponcode = CouponSystem->createNewCouponCode();
							int rewarditem = CouponSystem->getFortuneItem();
							uint32 quantity = 1 + (std::rand() % (15 - 1 + 1));
							CouponSystem->insertNewCouponCodeinDB(couponcode, rewarditem, quantity, 1, 1);
							std::ostringstream mailmessage;
							mailmessage << "Your created CouponCode is: " << couponcode << " \nThe CouponCode Price was 5000 Gold. \nThe Server Team wish you a nice Day!";
							CharacterSystem->sendPlayerMailwithoutanyhing(player->GetSession()->GetPlayer(), "Your Coupon Details", mailmessage.str().c_str());
							std::string accountname = "";
							accountname = CharacterSystem->getAccountName(player->GetSession()->GetAccountId());
							PlayerLog->insertNewPlayerLog(player->GetSession()->GetPlayerName(), player->GetGUID(), accountname, player->GetSession()->GetAccountId(), "Generate Friends Coupon Code at Exaltor.");

							ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("Your Coupon was created. CouponCode: %s", couponcode,
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("You should have Mail now with all Details.",
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("Have fun with it, %s", player->GetSession()->GetPlayerName(),
								player->GetName());
							ChatHandler(player->GetSession()).PSendSysMessage("##########################################################",
								player->GetName());

							return true;
						}



						else {
							creature->Say("Your Bag seems to be very empty! Come again if you had enoungh money to pay me!", LANG_UNIVERSAL, nullptr);
							return true;
						}
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