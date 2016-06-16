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
#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum Phases{
	PHASE_ONE = 1
};


class wandervolk : public CreatureScript
{

public:
	wandervolk() : CreatureScript("wandervolk") { }

	bool OnGossipHello(Player *pPlayer, Creature* _creature)
	{
		bool status = pPlayer->GetQuestRewardStatus(900801);
		if (status){
			pPlayer->ADD_GOSSIP_ITEM(7, "Bring mich zum Wandervolk!", GOSSIP_SENDER_MAIN, 0);
		}
		
		pPlayer->ADD_GOSSIP_ITEM(7, "Wer bist du?", GOSSIP_SENDER_MAIN, 1);
		pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player * pPlayer, Creature * /*pCreature*/, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch (uiAction)
		{

		case 0: {

			pPlayer->GetGUID();
			pPlayer->TeleportTo(0, 3129.77, -6284.07, 140.95, 1.53);
			return true;
		}break;


		case 1: {
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Das Wandervolk ist ein sehr vorsichtiges Volk. Du kannst dich nur beweissen indem du ihre Aufgaben erfuellst.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;
		return true;
		}
	return true;
	};
};


class janarius : public CreatureScript
{

public:
	janarius() : CreatureScript("janarius") { }

	bool OnQuestReward(Player* /*player*/, Creature* creature, Quest const* quest, uint32 /*opt*/) {

		if (quest->GetQuestId() == 900835){
			creature->HandleEmoteCommand(EMOTE_ONESHOT_CRY);
			creature->Yell("Dieser Bericht ist erschreckend! Wir muessen etwas tun!", LANG_UNIVERSAL, NULL);
			creature->AddAura(72525, creature);
			return true;
		}
        return true;
	}


	


	
};


class leandaria : public CreatureScript
{

public:
	leandaria() : CreatureScript("leandaria") { }



	bool OnGossipHello(Player *pPlayer, Creature* _creature)
	{

		pPlayer->ADD_GOSSIP_ITEM(7, "Hallo", GOSSIP_SENDER_MAIN, 0);
		bool status = pPlayer->GetQuestRewardStatus(900810);
		if (status){
			pPlayer->ADD_GOSSIP_ITEM(7, "Beam mich hoch!", GOSSIP_SENDER_MAIN, 1);
		}


		pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player * pPlayer, Creature * /*pCreature*/, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch (uiAction)
		{

		case 0: {
			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Hallo, ich bin Leandaria. Ihr muesst erst in meiner Gunst stehen um bei mir etwas zu bekommen. Schliesst zuerst die Quest 'Elostraio' ab.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;


		case 1: {
			pPlayer->GetGUID();
			pPlayer->TeleportTo(0, 3174.49, -6000.48, 208.00, 0.27);
			return true;
		}break;

			return true;
		}
		return true;
	};


};


class raetsel : public CreatureScript
{

public:
	raetsel() : CreatureScript("raetsel") { }

	bool OnGossipHello(Player *pPlayer, Creature* _creature)
	{
		bool status = pPlayer->GetQuestRewardStatus(802015);
		if (status){
			pPlayer->ADD_GOSSIP_ITEM(7, "Das zweite Raetsel", GOSSIP_SENDER_MAIN, 0);
		}
		pPlayer->ADD_GOSSIP_ITEM(7, "Was tust du hier?", GOSSIP_SENDER_MAIN, 1);
		pPlayer->PlayerTalkClass->SendGossipMenu(907, _creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player * pPlayer, Creature * /*pCreature */, uint32 /*uiSender*/, uint32 uiAction)
	{
		switch (uiAction)
		{

		case 0: {

			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Ein anderes Wort fuer Dunkel ist gesucht und Soldaten liefen auf gesuchten Routen. Findet ihr dazu 2 Stelzen die Koordinaten veraendern, seid ihr auf dem richtigen Weg.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;

		case 1: {

			pPlayer->GetGUID();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage("Hier kann man die lukrativen Raetselquestreihen abschliessen. Werden dir keine Quests angezeigt, hast du nicht die erforderlichen Vorquests abgeschlossen.",
				pPlayer->GetName());
			pPlayer->PlayerTalkClass->SendCloseGossip();
			return true;
		}break;

			return true;
		}
		return true;
	};

};


class indomatanpc : public CreatureScript
{
public: indomatanpc() : CreatureScript("indomatanpc"){ }

		bool OnQuestReward(Player* /*player*/, Creature* creature, Quest const* quest, uint32 /*opt*/) {
			if (quest->GetQuestId() == 900808){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Du hast den ersten Schritt geschafft", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900809){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Du hast den ersten Schritt geschafft", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900829){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Dieser Verrat muss geraecht werden!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900830){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Der erste ist tot. Schlachtet den naechsten ab!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900831){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Der erste ist tot. Schlachtet den naechsten ab!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900832){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Und der Zweite ist tot. Ihr seid ein wahrer Krieger!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900834){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_LAND);
				creature->Yell("Ich danke, dass ihr mich so unterstuetzt!", LANG_UNIVERSAL, NULL);
				creature->AddAura(52940,creature);
				return true;
			}

			if (quest->GetQuestId() == 900835){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_DANCE);
				creature->Yell("Und der Zweite ist tot. Ihr seid ein wahrer Krieger!", LANG_UNIVERSAL, NULL);
				return true;
			}
			return true;
		}

		bool OnQuestAccept(Player* player, Creature* /*creature*/, Quest const* quest) {
			if (quest->GetQuestId() == 900835){
				player->AddItem(5917, 1);
				return true;
			}
			return true;
		}


};


class lucionnpc : public CreatureScript
{
public: lucionnpc() : CreatureScript("lucion"){ }

		struct lucionAI: public ScriptedAI{

			lucionAI(Creature* creature) : ScriptedAI(creature) {}

			void Reset() override
			{
				_events.Reset();
				me->setFaction(35);
			}

			void EnterCombat(Unit* /*who*/) override
			{
				_events.SetPhase(PHASE_ONE);

			}

			void JustDied(Unit* /*killer*/) override
			{
				me->Yell("Ihr habt mich besiegt. Aber mein Meister wird weitere schicken!", LANG_UNIVERSAL, nullptr);
			}


		private:
			EventMap _events;
		};

		CreatureAI* GetAI(Creature* creature) const override
		{
			return new lucionAI(creature);
		}

		bool OnQuestReward(Player* /*player*/, Creature* creature, Quest const* quest, uint32 /*opt*/) override {
			if (quest->GetQuestId() == 900823){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_APPLAUD);
				creature->Yell("Danke fuer die Vorraete!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900824){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_APPLAUD);
				creature->Yell("Endlich liegen diese Maden im Dreck!", LANG_UNIVERSAL, NULL);
				return true;
			}

			if (quest->GetQuestId() == 900828){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK2HTIGHT);
				creature->Yell("Nun seid ihr an der Reihe Abschaum. Sterbt!", LANG_UNIVERSAL, NULL);
				creature->setFaction(21);
				return true;
			}

			return true;
		}



		bool OnQuestAccept(Player* /*player*/, Creature* creature, Quest const* quest) override {
			if (quest->GetQuestId() == 900825){
				creature->HandleEmoteCommand(EMOTE_ONESHOT_APPLAUD);
				creature->Yell("Hoert mir zu. Ich muss euch etwas wichtiges erzaehlen bevor wir hier weitermachen koennen. Groot und Kraserius von den Sammlern verdaechtigen mich, das ich ein Verraeter sei und nicht im Interesse von uns handeln wuerde. Aber ich kann Euch versichern, dem ist nicht so. Es ist eher anders, die beiden betruegen uns und das gesamte Volk. Sie nutzen uns aus und berreichern sich selbst. Glaubt mir! Ich moechte nicht das auch ihr ausgenutzt werdet.", LANG_UNIVERSAL, NULL);
			}
			return true;
		}


};

void AddSC_wandervolk()
{
	new wandervolk();
	new leandaria();
	new raetsel();
	new indomatanpc();
	new lucionnpc();
}