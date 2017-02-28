#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "time.h"
#include <stdio.h>
#include <stdlib.h>
#include "GameEventMgr.h"
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
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Spell.h"
#include "Player.h"
#include <Custom/Logic/CustomPlayerLog.h>
#include <Custom/Logic/CustomCharacterSystem.h>



class avarius_betatest : public ItemScript
{
public:
	avarius_betatest() : ItemScript("avarius_betatest") { }

	bool OnUse(Player* player, Item* /*item*/, const SpellCastTargets &)
	{
		CustomPlayerLog * PlayerLog = 0;
		if (player->IsInCombat())
		{
			player->GetSession()->SendNotification("You cannot use this in Combat!");
			return false;
		}
	
		player->TeleportTo(530, 10338.54f, -6353.21f, 31.94f, 2.92f);
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(),"Used AvariusBetatester Item");
		return true;
	}

};


class exitareshand : public ItemScript
{
public:
	exitareshand() : ItemScript("exitareshand") { }

	bool OnUse(Player* player, Item* /*item*/, const SpellCastTargets &)
	{
		CustomPlayerLog * PlayerLog = 0;
		if (player->IsInCombat())
		{
			player->GetSession()->SendNotification("You cannot use this in Combat!");
			return false;
		}

		player->TeleportTo(530, 10338.54f, -6353.21f, 31.94f, 2.92f);
		PlayerLog->addCompletePlayerLog(player->GetSession()->GetPlayer(), "Used Teleportitem");
		return true;
	}

};





void AddSC_Custom_Items()
{
	new avarius_betatest;
	new exitareshand();
}