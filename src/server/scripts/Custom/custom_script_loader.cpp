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

//Load MMO Commands
void AddSC_mmowning_commandscript();
//Load MMO Elite Commands
void AddSC_vip_commandscript();
//VIP NPC
void AddSC_npc_vip();
//TeleNPC2
void AddSC_npc_teleport();
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
//eventnpc
void AddSC_eventnpc();
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
void AddSC_Announce_NewPlayer();
//halloween
void AddSC_halloween();
//portitem
void AddSC_port_item();
//wandervolk
void AddSC_wandervolk();
//commands
void AddSC_bot_commands();

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

void AddSC_minion();

//automatisierungsscripte
void AddSC_automaticsupport();

void AddSC_ex_commands();


void AddCustomScripts()
{
	//Load MMO Commands
	AddSC_mmowning_commandscript();
	//Load MMO Elite Commands
	AddSC_vip_commandscript();
	//VIP NPC
	AddSC_npc_vip();
	// TeleNPC2
	AddSC_npc_teleport();
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
	//eventnpc
	AddSC_eventnpc();
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
	AddSC_Announce_NewPlayer();
	//halloween
	AddSC_halloween();
	//portitem
	AddSC_port_item();
	//wandervolk
	AddSC_wandervolk();

	AddSC_bot_commands();
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

	AddSC_minion();

	//automatisierungsscripte
	AddSC_automaticsupport();
    
    AddSC_ex_commands();
}
