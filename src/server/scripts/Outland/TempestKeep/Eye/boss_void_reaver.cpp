/*
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
<<<<<<< HEAD
=======
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
>>>>>>> origin/master
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

<<<<<<< HEAD
=======
/* ScriptData
SDName: Boss_Void_Reaver
SD%Complete: 90
SDComment: Should reset if raid are out of room.
SDCategory: Tempest Keep, The Eye
EndScriptData */

>>>>>>> origin/master
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "the_eye.h"

enum Yells
{
    SAY_AGGRO                   = 0,
    SAY_SLAY                    = 1,
    SAY_DEATH                   = 2,
    SAY_POUNDING                = 3
};

enum Spells
{
    SPELL_POUNDING              = 34162,
    SPELL_ARCANE_ORB            = 34172,
    SPELL_KNOCK_AWAY            = 25778,
    SPELL_BERSERK               = 27680
};

<<<<<<< HEAD
enum Events
{
    EVENT_POUNDING              = 1,
    EVENT_ARCANE_ORB,
    EVENT_KNOCK_AWAY,
    EVENT_BERSERK
};

class boss_void_reaver : public CreatureScript
{
    public:
=======
class boss_void_reaver : public CreatureScript
{
    public:

>>>>>>> origin/master
        boss_void_reaver() : CreatureScript("boss_void_reaver") { }

        struct boss_void_reaverAI : public BossAI
        {
            boss_void_reaverAI(Creature* creature) : BossAI(creature, DATA_VOID_REAVER)
            {
                Initialize();
            }

            void Initialize()
            {
<<<<<<< HEAD
                Enraged = false;
            }

=======
                Pounding_Timer = 15000;
                ArcaneOrb_Timer = 3000;
                KnockAway_Timer = 30000;
                Berserk_Timer = 600000;

                Enraged = false;
            }

            uint32 Pounding_Timer;
            uint32 ArcaneOrb_Timer;
            uint32 KnockAway_Timer;
            uint32 Berserk_Timer;

            bool Enraged;

>>>>>>> origin/master
            void Reset() override
            {
                Initialize();
                _Reset();
            }

            void KilledUnit(Unit* /*victim*/) override
            {
                Talk(SAY_SLAY);
            }

            void JustDied(Unit* /*killer*/) override
            {
                Talk(SAY_DEATH);
                DoZoneInCombat();
                _JustDied();
            }

            void EnterCombat(Unit* /*who*/) override
            {
                Talk(SAY_AGGRO);
                _EnterCombat();
<<<<<<< HEAD

                events.ScheduleEvent(EVENT_POUNDING, 15000);
                events.ScheduleEvent(EVENT_ARCANE_ORB, 3000);
                events.ScheduleEvent(EVENT_KNOCK_AWAY, 30000);
                events.ScheduleEvent(EVENT_BERSERK, 600000);
=======
>>>>>>> origin/master
            }

            void UpdateAI(uint32 diff) override
            {
                if (!UpdateVictim())
                    return;
<<<<<<< HEAD

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_POUNDING:
                            DoCastVictim(SPELL_POUNDING);
                            Talk(SAY_POUNDING);
                            events.ScheduleEvent(EVENT_POUNDING, 15000);
                            break;
                        case EVENT_ARCANE_ORB:
                        {
                            Unit* target = NULL;
                            std::list<HostileReference*> t_list = me->getThreatManager().getThreatList();
                            std::vector<Unit*> target_list;
                            for (std::list<HostileReference*>::const_iterator itr = t_list.begin(); itr != t_list.end(); ++itr)
                            {
                                target = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid());
                                if (!target)
                                    continue;
                                // exclude pets & totems, 18 yard radius minimum
                                if (target->GetTypeId() == TYPEID_PLAYER && target->IsAlive() && !target->IsWithinDist(me, 18, false))
                                    target_list.push_back(target);
                                target = NULL;
                            }

                            if (!target_list.empty())
                                target = *(target_list.begin() + rand32() % target_list.size());
                            else
                                target = me->GetVictim();

                            if (target)
                                me->CastSpell(target, SPELL_ARCANE_ORB, false, NULL, NULL);

                            events.ScheduleEvent(EVENT_ARCANE_ORB, 3000);
                            break;
                        }
                        case EVENT_KNOCK_AWAY:
                            DoCastVictim(SPELL_KNOCK_AWAY);
                            // Drop 25% aggro
                            if (DoGetThreat(me->GetVictim()))
                                DoModifyThreatPercent(me->GetVictim(), -25);

                            events.ScheduleEvent(EVENT_KNOCK_AWAY, 30000);
                            break;
                        case EVENT_BERSERK:
                            if (!Enraged)
                            {
                                DoCast(me, SPELL_BERSERK);
                                Enraged = true;
                            }
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

        private:
            bool Enraged;
=======
                // Pounding
                if (Pounding_Timer <= diff)
                {
                    DoCastVictim(SPELL_POUNDING);
                    Talk(SAY_POUNDING);
                    Pounding_Timer = 15000; //cast time(3000) + cooldown time(12000)
                }
                else
                    Pounding_Timer -= diff;
                // Arcane Orb
                if (ArcaneOrb_Timer <= diff)
                {
                    Unit* target = NULL;
                    std::list<HostileReference*> t_list = me->getThreatManager().getThreatList();
                    std::vector<Unit*> target_list;
                    for (std::list<HostileReference*>::const_iterator itr = t_list.begin(); itr!= t_list.end(); ++itr)
                    {
                        target = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid());
                        if (!target)
                            continue;
                        // exclude pets & totems, 18 yard radius minimum
                        if (target->GetTypeId() == TYPEID_PLAYER && target->IsAlive() && !target->IsWithinDist(me, 18, false))
                            target_list.push_back(target);
                        target = NULL;
                    }

                    if (!target_list.empty())
                        target = *(target_list.begin() + rand32() % target_list.size());
                    else
                        target = me->GetVictim();

                    if (target)
                        me->CastSpell(target, SPELL_ARCANE_ORB, false, NULL, NULL);
                    ArcaneOrb_Timer = 3000;
                }
                else
                    ArcaneOrb_Timer -= diff;
                // Single Target knock back, reduces aggro
                if (KnockAway_Timer <= diff)
                {
                    DoCastVictim(SPELL_KNOCK_AWAY);
                    //Drop 25% aggro
                    if (DoGetThreat(me->GetVictim()))
                        DoModifyThreatPercent(me->GetVictim(), -25);
                    KnockAway_Timer = 30000;
                }
                else
                    KnockAway_Timer -= diff;
                //Berserk
                if (Berserk_Timer < diff && !Enraged)
                {
                    DoCast(me, SPELL_BERSERK);
                    Enraged = true;
                }
                else
                    Berserk_Timer -= diff;

                DoMeleeAttackIfReady();
            }
>>>>>>> origin/master
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return GetInstanceAI<boss_void_reaverAI>(creature);
        }
};

void AddSC_boss_void_reaver()
{
    new boss_void_reaver();
}

