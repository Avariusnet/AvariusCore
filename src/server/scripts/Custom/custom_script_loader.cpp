/*
* Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

// This is where scripts' loading functions should be declared:


// The name of this function should match:
// void Add${NameOfDirectory}Scripts()

void AddSC_boss_galadriel();

//vipvendor
void AddSC_vipvendor();

//Coupon 
void AddSC_coupon();
//eventnpc
void AddSC_eventnpc();
//autobalancer
//Load MMO Commands
void AddSC_custom_commandscript();
//Load MMO Elite Commands
//void AddSC_vip_commandscript();
//VIP NPC
// Fake Players
//void AddSC_fake_commandscript();
// WorldChat
//void AddSC_cs_world_chat();
// Congrats on Level
void AddSC_custom_CongratsOnLevel();
//welcome_npc
void AddSC_npcfirstchar();
//porter
void AddSC_seruc();
//bosstwo
void AddSC_boss_two();
//boss eonar
void AddSC_eonar();
//boss anna
void AddSC_anna();
//racechanger
void AddSC_Race_Change_NPC();
//allianzboss
void AddSC_alliance_boss();
//supportnpc
void AddSC_supportnpc();
//exitare_schatten
void AddSC_exitare();
//orrig
void AddSC_orrig();
//tolreos
void AddSC_tolreos();
//dark
void AddSC_dark();
//light
void AddSC_light();
//lighthard
void AddSC_lighthardmode();
//dark2
void AddSC_dark2();
//playerhello
void AddSC_mixed_scripts();
//halloween
void AddSC_halloween();

//wandervolk
void AddSC_wandervolk();

//Neujahrsevent
void AddSC_neujahrsevent();

//weihnachtsevent
void AddSC_weihnachtsevent();

//gildenhausvendor
void AddSC_gildenvendor();

//Inselnpc
void AddSC_inselnpc();

//codenpc
void AddSC_codenpc();

//automatisierungsscripte
void AddSC_automaticsupport();

//Quest report commands
void AddSC_ex_reportcommands();

//Exis Testcommands
void AddSC_ex_testcommands();

//Custom XP COmmands
void AddSC_ex_customxpcommands();

//Custom_Items
void AddSC_Custom_Items();

//Playtime Rewards
void AddSC_PlayTimeRewards();

//XP Scripts
void AddSC_XPScripts();

//AllLoger
void AddSC_logscript();

//Question and Answer commands
void AddSC_Question_and_Answer_Commands();

//Autobroadcast
void AddSC_AutobroadCast();

//Acountwide Achievements
void AddSC_accountachievement();


//Testscruot
void AddSC_testscript();

void AddCustomScripts()
{
	
	

	AddSC_testscript();
	//Accountwide Achievements
	AddSC_accountachievement();
	//autobroadcast
	AddSC_AutobroadCast();

	//Question and Answer command
	AddSC_Question_and_Answer_Commands();

	//All Loger
	AddSC_logscript();

	//XP Scripts
	AddSC_XPScripts();

	//Playtime Rewards
	AddSC_PlayTimeRewards();
	//vipvendor
	AddSC_vipvendor();


	//Custom_Items
	AddSC_Custom_Items();

	//galadriel
	AddSC_boss_galadriel();

	//Coupon
	AddSC_coupon();

	//eventnpc
	AddSC_eventnpc();
	//Load MMO Commands
	AddSC_custom_commandscript();
	//Load MMO Elite Commands
	//AddSC_vip_commandscript();
	// Fake Players
	//AddSC_fake_commandscript();
	//WorldChat
	//AddSC_cs_world_chat();	
	// Congrats on Level
	AddSC_custom_CongratsOnLevel();
	//firstnpc
	AddSC_npcfirstchar();
	//porter
	AddSC_seruc();
	//bosstwo
	AddSC_boss_two();
	//boss eonar
	AddSC_eonar();
	//bawz anna
	AddSC_anna();
	//racechanger
	AddSC_Race_Change_NPC();
	//allianzboss
	AddSC_alliance_boss();
	//supportnpc
	AddSC_supportnpc();
	//exitare_schatten
	AddSC_exitare();
	//orrig
	AddSC_orrig();
	//tolreos
	AddSC_tolreos();
	//dark
	AddSC_dark();
	//light
	AddSC_light();
	//lighhard
	AddSC_lighthardmode();
	//dark2
	AddSC_dark2();
	//helloplayer
	AddSC_mixed_scripts();
	//halloween
	AddSC_halloween();

	//wandervolk
	AddSC_wandervolk();


	//Neujahrsevent
	AddSC_neujahrsevent();

	//weihnachtsevent
	AddSC_weihnachtsevent();

	//gildenhausvendor
	AddSC_gildenvendor();

	//inselnpc
	AddSC_inselnpc();

	//codenpc
	AddSC_codenpc();

	//automatisierungsscripte
	AddSC_automaticsupport();

	//Report Commands
	AddSC_ex_reportcommands();


	//Testcommands
	AddSC_ex_testcommands();


	//Custom XP Commands
	AddSC_ex_customxpcommands();


}

