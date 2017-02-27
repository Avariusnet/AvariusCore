#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
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
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomCharacterSystem.h>
#include <Custom/Logic/CustomPlayerLog.h>

#define NOCHARACTERFOUND "No Character in DB!"
#define NOACCOUNTFOUND "No Account in DB!"
#define NOTENOUGHMONEY "Not enough Money!"
#define TOOMANYCHARACTER "You have already 10 Characters"


class automatic : public CreatureScript
{
public:
	automatic() : CreatureScript("automatic") { }


	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (sConfigMgr->GetBoolDefault("Characterhelper.NPC", true)) {
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Does my Character exist?", GOSSIP_SENDER_MAIN, 0, "Your Charactername: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Transfer my Character to another Account! [Unremovable / 5k Gold]", GOSSIP_SENDER_MAIN, 2, "Targetaccount Name: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Give me another First Character! [Unremovable]", GOSSIP_SENDER_MAIN, 3, "Are you sure? Please enter your Charactername: ", 0, true);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Thx! Bring me back!", GOSSIP_SENDER_MAIN, 1, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, 7, "Help me!", GOSSIP_SENDER_MAIN, 4, "", 0, false);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}

		else {
			creature->SetPhaseMask(2, true);
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
			return true;
		}
	
	}

	bool OnGossipSelectCode(Player * player, Creature* /*creature*/, uint32 /*sender*/, uint32 action, const char* code){
		CustomCharacterSystem * CharacterSystem = 0;
		CustomPlayerLog * PlayerLog = 0;
		switch (action){
			

		case 0:
		{
			CharacterSystem->doesCharacterExist(player->GetSession()->GetPlayer(), code);

		}break;


		case 2:
		{
			CharacterSystem->moveCharacterToAnotherAccount(player->GetSession()->GetPlayer(), code);
			return true;
		}break;


		//Request new Firstchar!
		case 3: 
		{
			CharacterSystem->requestNewFirstCharacter(player->GetSession()->GetPlayer(), code);
			return true;

		}break;


		return true;

		}

		return true;
	}


	bool OnGossipSelect(Player * player, Creature * creature, uint32 /*uiSender*/, uint32 uiAction){

		switch (uiAction)
		{
		
		case 1:
		{
			player->Recall();
			return true;
		}break;

		
		case 4:{

			player->PlayerTalkClass->ClearMenus();
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Was ist das hier?", GOSSIP_SENDER_MAIN, 5, "", 0, false);
			player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1,7, "Wie geht der Charaktertransfer", GOSSIP_SENDER_MAIN, 6, "", 0, false);
			player->PlayerTalkClass->SendGossipMenu(907, creature->GetGUID());
			return true;
			
		}break;

		case 5:
		{
			ChatHandler(player->GetSession()).PSendSysMessage("Ich bin der erweiterte Supportnpc. Ich wurde direkt vom Supportteam losgeschickt um Euch in allen Belangen helfen zu koennen.",
				player->GetName());
			return true;
		}break;

		case 6:
		{
			ChatHandler(player->GetSession()).PSendSysMessage("Ihr braucht 5.000 Gold. Ihr muesst dann den Accountnamen eingeben, zu welchem der Charakter transferiert werden soll. Einmal bestaetigt kann die Uebertragung nicht mehr abgebrochen werden. Nachdem ihr ausgeloggt habt, ist der Charakter transferiert!",
				player->GetName());
			return true;
		}break;
		
			return true;
		}
		return true;
	}

};

void AddSC_automaticsupport()
{
	new automatic();
}