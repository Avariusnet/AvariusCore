#include "CustomTranslationSystem.h"
#include "Chat.h"

std::string CustomTranslationSyste::checkPlayerLocale(Player * player)
{
	int locale = player->GetSession()->GetSessionDbLocaleIndex();

	ChatHandler(player->GetSession()).PSendSysMessage("GetSessionDBCLocale ", player->GetSession()->GetSessionDbcLocale(),
		player->GetName());

	std::string rr = "";
	return rr;
}
