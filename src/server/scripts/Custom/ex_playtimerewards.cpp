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
#include <vector>
#include <Custom/Logic/CustomXP.h>
#include <Custom/Logic/CustomGMLogic.h>
#include <Custom/Logic/CustomCharacterSystem.h>


#define THX "Thank you for playing on Blacknetwork!"
#define PRESENT "Your Present"


class PlayTimeRewards : public PlayerScript
{
public:
	PlayTimeRewards() : PlayerScript("PlayTimeRewards") { }

	void Belohnung(Player* player, int amount, int guid, int money) {
		return;
	}

	void OnLogin(Player* player, bool /*firstLogin*/) {

		uint32 time = player->GetTotalPlayedTime();

		if (sConfigMgr->GetBoolDefault("Playtime.Rewards", true)) {
			CustomCharacterSystem * CharacterSystem = 0;
			//10h
			if (time >= 36000 && time <= 71999) {
				CharacterSystem->completeAddPlayTimeReward(10, player->GetSession()->GetPlayer(), 250);
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

				PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYTIME_REWARDS);
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

				PreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_PLAYTIME_REWARDS);
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



void AddSC_PlayTimeRewards()
{
	new PlayTimeRewards();
}