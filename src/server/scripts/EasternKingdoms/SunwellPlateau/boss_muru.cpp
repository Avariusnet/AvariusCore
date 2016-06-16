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

<<<<<<< HEAD
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "sunwell_plateau.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"

enum Spells
{
    // Muru's spells
    SPELL_OPEN_PORTAL_PERIODIC                  = 45994,
    SPELL_DARKNESS_PERIODIC                     = 45998,
    SPELL_NEGATIVE_ENERGY_PERIODIC              = 46009,
    SPELL_SUMMON_VOID_SPAWN                     = 46071,
    SPELL_SUMMON_BLOOD_ELVES_SCRIPT             = 46050,
    SPELL_SUMMON_BLOOD_ELVES_PERIODIC           = 46041,
    SPELL_OPEN_ALL_PORTALS                      = 46177,
    SPELL_SUMMON_ENTROPIUS                      = 46217,
    SPELL_ENRAGE                                = 26662,
    SPELL_SUMMON_DARK_FIEND_0                   = 46000,
    SPELL_SUMMON_DARK_FIEND_1                   = 46001,
    SPELL_SUMMON_DARK_FIEND_2                   = 46002,
    SPELL_SUMMON_DARK_FIEND_3                   = 46003,
    SPELL_SUMMON_DARK_FIEND_4                   = 46004,
    SPELL_SUMMON_DARK_FIEND_5                   = 46005,
    SPELL_SUMMON_DARK_FIEND_6                   = 46006,
    SPELL_SUMMON_DARK_FIEND_7                   = 46007,
    SPELL_SUMMON_BERSERKER                      = 46037,
    SPELL_SUMMON_BERSERKER_2                    = 46040,
    SPELL_SUMMON_FURY_MAGE                      = 46038,
    SPELL_SUMMON_FURY_MAGE_2                    = 46039,

    // Entropius's spells
    SPELL_ENTROPIUS_COSMETIC_SPAWN              = 46223,
    SPELL_DARKNESS_E                            = 46269,
    SPELL_NEGATIVE_ENERGY_PERIODIC_E            = 46284,
    SPELL_BLACKHOLE                             = 46282,
    SPELL_SUMMON_DARKFIEND_E                    = 46263,

    // Myruu's Portal Target
    SPELL_SUMMON_VOID_SENTINEL_SUMMONER         = 45978,
    SPELL_SUMMON_VOID_SENTINEL_SUMMONER_VISUAL  = 45989,
    SPELL_SUMMON_VOID_SENTINEL                  = 45988,
    SPELL_TRANSFORM_VISUAL_MISSILE              = 46205,
    TRANSFORM_VISUAL_MISSILE_1                  = 46208,
    TRANSFORM_VISUAL_MISSILE_2                  = 46178,
    SPELL_OPEN_PORTAL                           = 45977,
    SPELL_OPEN_PORTAL_2                         = 45976,

    //Dark Fiend Spells
    SPELL_DARKFIEND_DAMAGE                      = 45944,
    SPELL_DARKFIEND_VISUAL                      = 45936,
    SPELL_DARKFIEND_SKIN                        = 45934,

    // Void Sentinel's spells
    SPELL_SHADOW_PULSE_PERIODIC                 = 46086,
    SPELL_VOID_BLAST                            = 46161,

    //Black Hole Spells
    SPELL_BLACKHOLE_SUMMON_VISUAL               = 46242,
    SPELL_BLACKHOLE_SUMMON_VISUAL_2             = 46247,
    SPELL_BLACKHOLE_PASSIVE                     = 46228,
    SPELL_BLACK_HOLE_VISUAL_2                   = 46235
};

enum Phases
{
    PHASE_ONE                                   = 1,
    PHASE_TWO                                   = 2
};

enum Misc
{
    MAX_VOID_SPAWNS                             = 6,
    MAX_SUMMON_BLOOD_ELVES                      = 4,
    MAX_SUMMON_DARK_FIEND                       = 8
};

uint32 const SummonDarkFiendSpells[MAX_SUMMON_DARK_FIEND] =
{
    SPELL_SUMMON_DARK_FIEND_0,
    SPELL_SUMMON_DARK_FIEND_1,
    SPELL_SUMMON_DARK_FIEND_2,
    SPELL_SUMMON_DARK_FIEND_3,
    SPELL_SUMMON_DARK_FIEND_4,
    SPELL_SUMMON_DARK_FIEND_5,
    SPELL_SUMMON_DARK_FIEND_6,
    SPELL_SUMMON_DARK_FIEND_7
};

uint32 const SummonBloodElvesSpells[MAX_SUMMON_BLOOD_ELVES] =
{
    SPELL_SUMMON_BERSERKER,
    SPELL_SUMMON_BERSERKER_2,
    SPELL_SUMMON_FURY_MAGE,
    SPELL_SUMMON_FURY_MAGE_2
};

class VoidSpawnSummon : public BasicEvent
{
    public:
        explicit VoidSpawnSummon(Creature* owner)
            : _owner(owner)
        {
        }

        bool Execute(uint64 /*time*/, uint32 /*diff*/)
        {
            _owner->CastSpell((Unit*)nullptr, SPELL_SUMMON_VOID_SENTINEL, true);
            return true;
        }

    private:
        Creature* _owner;
=======
/* ScriptData
SDName: Boss_Muru
SD%Complete: 80
SDComment: all sounds, black hole effect triggers to often (46228)
*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "sunwell_plateau.h"
#include "Player.h"
#include "SpellInfo.h"

// Muru & Entropius's spells
enum Spells
{
    SPELL_ENRAGE                 = 26662,

    // Muru's spells
    SPELL_NEGATIVE_ENERGY        = 46009, //(this trigger 46008)
    SPELL_DARKNESS               = 45999,
    SPELL_OPEN_ALL_PORTALS       = 46177,
    SPELL_OPEN_PORTAL            = 45977,
    SPELL_OPEN_PORTAL_2          = 45976,
    SPELL_SUMMON_BERSERKER       = 46037,
    SPELL_SUMNON_FURY_MAGE       = 46038,
    SPELL_SUMMON_VOID_SENTINEL   = 45988,
    SPELL_SUMMON_ENTROPIUS       = 46217,

    // Entropius's spells
    SPELL_DARKNESS_E             = 46269,
    SPELL_BLACKHOLE              = 46282,
    SPELL_NEGATIVE_ENERGY_E      = 46284,
    SPELL_ENTROPIUS_SPAWN        = 46223,

    // Shadowsword Berserker's spells
    SPELL_FLURRY                 = 46160,
    SPELL_DUAL_WIELD             = 29651,

    // Shadowsword Fury Mage's spells
    SPELL_FEL_FIREBALL           = 46101,
    SPELL_SPELL_FURY             = 46102,

    // Void Sentinel's spells
    SPELL_SHADOW_PULSE           = 46087,
    SPELL_VOID_BLAST             = 46161,

    // Void Spawn's spells
    SPELL_SHADOW_BOLT_VOLLEY     = 46082,

    //Dark Fiend Spells
    SPELL_DARKFIEND_AOE          = 45944,
    SPELL_DARKFIEND_VISUAL       = 45936,
    SPELL_DARKFIEND_SKIN         = 45934,

    //Black Hole Spells
    SPELL_BLACKHOLE_SPAWN        = 46242,
    SPELL_BLACKHOLE_GROW         = 46228
};

enum Events
{
    // M'uru
    EVENT_DARKNESS = 1,
    EVENT_SUMMON_HUMANOIDS,
    EVENT_SUMMON_SENTINEL,
    EVENT_PHASE_TRANSITION, // Delayed phase transition.
    EVENT_ENRAGE,

    // Entropius
    EVENT_SUMMON_BLACK_HOLE
};

enum Phases
{
    PHASE_ONE = 1,
    PHASE_TWO,
};

enum CreatureGroups
{
    CREATURE_GROUP_HUMANOIDS,
    CREATURE_GROUP_DARKFIENDS
>>>>>>> origin/master
};

class boss_entropius : public CreatureScript
{
public:
    boss_entropius() : CreatureScript("boss_entropius") { }

    struct boss_entropiusAI : public BossAI
    {
        boss_entropiusAI(Creature* creature) : BossAI(creature, DATA_MURU) { }

        void Reset() override
        {
<<<<<<< HEAD
            _Reset();
            DoCast(me, SPELL_ENTROPIUS_COSMETIC_SPAWN, true);
        }

        void ScheduleTasks() override
        {
            scheduler.Schedule(Milliseconds(2000), [this](TaskContext /*context*/)
            {
                DoResetPortals();
                DoCastAOE(SPELL_NEGATIVE_ENERGY_PERIODIC_E, true);
            });

            scheduler.Schedule(Seconds(15), [this](TaskContext context)
            {
                DoCastAOE(SPELL_DARKNESS_E, true);
                DoCastAOE(SPELL_BLACKHOLE, true);

                context.Repeat();
            });
        }

        void JustSummoned(Creature* summon) override
        {
            switch (summon->GetEntry())
            {
                case NPC_DARK_FIENDS:
                    summon->CastSpell(summon, SPELL_DARKFIEND_VISUAL);
                    break;
                case NPC_DARKNESS:
                    summon->SetReactState(REACT_PASSIVE);
                    summon->CastSpell(summon, SPELL_BLACKHOLE);
                    summon->CastSpell(summon, SPELL_SUMMON_DARKFIEND_E, true);
                    break;
            }
            summons.Summon(summon);
        }

        void EnterEvadeMode(EvadeReason /*why*/) override
        {
            if (Creature* muru = ObjectAccessor::GetCreature(*me, instance->GetGuidData(DATA_MURU)))
                muru->AI()->EnterEvadeMode();

            DoResetPortals();
            summons.DespawnAll();
            me->DespawnOrUnsummon();
        }

        void JustDied(Unit* /*killer*/) override
        {
            _JustDied();

            if (Creature* muru = ObjectAccessor::GetCreature(*me, instance->GetGuidData(DATA_MURU)))
                muru->DisappearAndDie();
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            scheduler.Update(diff, [this]
            {
                DoMeleeAttackIfReady();
            });
        }

        void DoResetPortals()
        {
            std::list<Creature*> portals;
            me->GetCreatureListWithEntryInGrid(portals, NPC_MURU_PORTAL_TARGET, 100.0f);
            for (Creature* portal : portals)
                portal->RemoveAllAuras();
=======
            DoCastAOE(SPELL_NEGATIVE_ENERGY_E);
        }

        void EnterCombat(Unit* /*who*/) override
        {
            _EnterCombat();
            DoCastAOE(SPELL_NEGATIVE_ENERGY_E, true);
            DoCast(me, SPELL_ENTROPIUS_SPAWN);
            events.ScheduleEvent(EVENT_SUMMON_BLACK_HOLE, 15000);
        }

        void JustSummoned(Creature* summoned) override
        {
            switch (summoned->GetEntry())
            {
                case NPC_DARK_FIENDS:
                    summoned->CastSpell(summoned, SPELL_DARKFIEND_VISUAL);
                    break;
                case NPC_DARKNESS:
                    summoned->AddUnitState(UNIT_STATE_STUNNED);
                    float x, y, z, o;
                    summoned->GetHomePosition(x, y, z, o);
                    me->SummonCreature(NPC_DARK_FIENDS, x, y, z, o, TEMPSUMMON_CORPSE_DESPAWN, 0);
                    break;
            }
            summoned->AI()->AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0, 50, true));
            summons.Summon(summoned);
        }

        void ExecuteEvent(uint32 eventId) override
        {
            if (eventId == EVENT_SUMMON_BLACK_HOLE)
            {
                if (Unit* random = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(random, SPELL_DARKNESS_E);
                if (Unit* random = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    random->CastSpell(random, SPELL_BLACKHOLE);
                events.ScheduleEvent(EVENT_SUMMON_BLACK_HOLE, 15000);
            }
        }

        void EnterEvadeMode(EvadeReason /*why*/) override
        {
            if (Creature* muru = ObjectAccessor::GetCreature(*me, instance->GetGuidData(DATA_MURU)))
                muru->AI()->Reset(); // Reset encounter.
            me->DisappearAndDie();
            summons.DespawnAll();
>>>>>>> origin/master
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<boss_entropiusAI>(creature);
    }
};

class boss_muru : public CreatureScript
{
public:
    boss_muru() : CreatureScript("boss_muru") { }

    struct boss_muruAI : public BossAI
    {
        boss_muruAI(Creature* creature) : BossAI(creature, DATA_MURU)
        {
            Initialize();
            SetCombatMovement(false);
        }

        void Initialize()
        {
<<<<<<< HEAD
            _hasEnraged = false;
            _phase = PHASE_ONE;
            _entropiusGUID.Clear();
=======
            DarkFiend = false;
            HasEnraged = false;
            EntropiusGUID.Clear();
>>>>>>> origin/master
        }

        void Reset() override
        {
<<<<<<< HEAD
            _Reset();
            Initialize();
=======
            Initialize();
            _Reset();
>>>>>>> origin/master
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetVisible(true);
        }

<<<<<<< HEAD
        void EnterEvadeMode(EvadeReason /*why*/) override
        {
            BossAI::EnterEvadeMode();
            if (Creature* entropius = ObjectAccessor::GetCreature(*me, _entropiusGUID))
                entropius->AI()->EnterEvadeMode();
        }

        void ScheduleTasks() override
        {
            scheduler.Schedule(Minutes(10), [this](TaskContext /*context*/)
            {
                if (Creature* entropius = ObjectAccessor::GetCreature(*me, _entropiusGUID))
                    entropius->CastSpell(entropius, SPELL_ENRAGE);
                DoCast(me, SPELL_ENRAGE);
                _hasEnraged = true;
            });

            scheduler.Schedule(Seconds(10), [this](TaskContext /*context*/)
            {
                DoCast(me, SPELL_SUMMON_BLOOD_ELVES_SCRIPT, true);
                DoCast(me, SPELL_SUMMON_BLOOD_ELVES_PERIODIC, true);
            });
        }

        void EnterCombat(Unit* /*who*/) override
        {
            _EnterCombat();
            DoCast(me, SPELL_OPEN_PORTAL_PERIODIC, true);
            DoCast(me, SPELL_DARKNESS_PERIODIC, true);
            DoCast(me, SPELL_NEGATIVE_ENERGY_PERIODIC, true);
=======
        void EnterCombat(Unit* /*who*/) override
        {
            _EnterCombat();
            events.SetPhase(PHASE_ONE);
            events.ScheduleEvent(EVENT_ENRAGE, 600000);
            events.ScheduleEvent(EVENT_DARKNESS, 45000, 0, PHASE_ONE);
            events.ScheduleEvent(EVENT_SUMMON_HUMANOIDS, 10000, 0, PHASE_ONE);
            events.ScheduleEvent(EVENT_SUMMON_SENTINEL, 31500, 0, PHASE_ONE);
            DoCastAOE(SPELL_NEGATIVE_ENERGY);
>>>>>>> origin/master
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage) override
        {
<<<<<<< HEAD
            if (damage >= me->GetHealth())
            {
                damage = me->GetHealth() - 1;
                if (_phase != PHASE_ONE)
                    return;

                _phase = PHASE_TWO;
                me->RemoveAllAuras();
                DoCast(me, SPELL_OPEN_ALL_PORTALS, true);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

                scheduler.Schedule(Seconds(6), [this](TaskContext /*context*/)
                {
                    DoCast(me, SPELL_SUMMON_ENTROPIUS, true);
                });
            }
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_ENTROPIUS)
            {
                me->SetVisible(false);
                _entropiusGUID = summon->GetGUID();
                if (_hasEnraged)
                    summon->CastSpell(summon, SPELL_ENRAGE, true);
                return;
            }
            BossAI::JustSummoned(summon);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            scheduler.Update(diff);
        }

    private:
        ObjectGuid _entropiusGUID;
        bool _hasEnraged;
        uint8 _phase;
=======
            if (damage >= me->GetHealth() && events.IsInPhase(PHASE_ONE))
            {
                damage = 0;
                me->RemoveAllAuras();
                DoCast(me, SPELL_OPEN_ALL_PORTALS);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                events.SetPhase(PHASE_TWO);
                events.ScheduleEvent(EVENT_PHASE_TRANSITION, 2000);
            }
        }

        void JustSummoned(Creature* summoned) override
        {
            switch (summoned->GetEntry())
            {
                case NPC_ENTROPIUS:
                    me->SetVisible(false);
                    EntropiusGUID = summoned->GetGUID();
                    if (HasEnraged) // If we hit phase transition while enraged, enrage Entropius as well.
                        summoned->CastSpell(summoned, SPELL_ENRAGE);
                    break;
                case NPC_DARK_FIENDS:
                    summoned->CastSpell(summoned, SPELL_DARKFIEND_VISUAL);
                    break;
            }
            summoned->AI()->AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0, 50, true));
            summons.Summon(summoned);
        }

        void ExecuteEvent(uint32 eventId) override
        {
            switch (eventId)
            {
                case EVENT_DARKNESS:
                    if (!DarkFiend)
                    {
                        DarkFiend = true;
                        DoCastAOE(SPELL_DARKNESS);
                    }
                    else
                        me->SummonCreatureGroup(CREATURE_GROUP_DARKFIENDS);
                    events.ScheduleEvent(EVENT_DARKNESS, DarkFiend ? 3000 : 42000, 0, PHASE_ONE);
                    break;
                case EVENT_SUMMON_HUMANOIDS:
                    me->SummonCreatureGroup(CREATURE_GROUP_HUMANOIDS);
                    events.ScheduleEvent(EVENT_SUMMON_HUMANOIDS, 60000, 0, PHASE_ONE);
                    break;
                case EVENT_SUMMON_SENTINEL:
                    DoCastAOE(SPELL_OPEN_PORTAL_2);
                    events.ScheduleEvent(EVENT_SUMMON_SENTINEL, 30000, 0, PHASE_ONE);
                    break;
                case EVENT_PHASE_TRANSITION:
                    DoCast(me, SPELL_SUMMON_ENTROPIUS);
                    break;
                case EVENT_ENRAGE:
                    if (Creature* entropius = ObjectAccessor::GetCreature(*me, EntropiusGUID))
                        entropius->CastSpell(entropius, SPELL_ENRAGE);
                    DoCast(me, SPELL_ENRAGE);
                    HasEnraged = true;
                    break;
                default:
                    break;
            }
        }

    private:
        bool DarkFiend;
        bool HasEnraged;
        ObjectGuid EntropiusGUID;
>>>>>>> origin/master
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<boss_muruAI>(creature);
    }
};

class npc_muru_portal : public CreatureScript
{
public:
    npc_muru_portal() : CreatureScript("npc_muru_portal") { }

<<<<<<< HEAD
    struct npc_muru_portalAI : public ScriptedAI
    {
        npc_muru_portalAI(Creature* creature) : ScriptedAI(creature) { }

        void JustSummoned(Creature* summon) override
        {
            DoCast(summon, SPELL_SUMMON_VOID_SENTINEL_SUMMONER_VISUAL, true);

            summon->m_Events.AddEvent(new VoidSpawnSummon(summon), summon->m_Events.CalculateTime(1500));
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            switch (spell->Id)
            {
                case SPELL_OPEN_ALL_PORTALS:
                    DoCastAOE(SPELL_OPEN_PORTAL, true);
                    DoCastAOE(SPELL_TRANSFORM_VISUAL_MISSILE, true);
                    break;
                case SPELL_OPEN_PORTAL_2:
                    DoCastAOE(SPELL_OPEN_PORTAL, true);
                    _scheduler.Schedule(Seconds(6), [this](TaskContext /*context*/)
                    {
                        DoCastAOE(SPELL_SUMMON_VOID_SENTINEL_SUMMONER, true);
                    });
                    break;
                default:
=======
    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetInstanceAI<npc_muru_portalAI>(creature);
    }

    struct npc_muru_portalAI : public ScriptedAI
    {
        npc_muru_portalAI(Creature* creature) : ScriptedAI(creature), Summons(creature)
        {
            Initialize();
            SetCombatMovement(false);
            instance = creature->GetInstanceScript();
        }

        void Initialize()
        {
            SummonTimer = 5000;

            InAction = false;
            SummonSentinel = false;
        }

        InstanceScript* instance;

        SummonList Summons;

        bool SummonSentinel;
        bool InAction;

        uint32 SummonTimer;

        void Reset() override
        {
            Initialize();

            me->AddUnitState(UNIT_STATE_STUNNED);

            Summons.DespawnAll();
        }

        void JustSummoned(Creature* summoned) override
        {
            if (Player* target = ObjectAccessor::GetPlayer(*me, instance->GetGuidData(DATA_PLAYER_GUID)))
                summoned->AI()->AttackStart(target);

            Summons.Summon(summoned);
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo* Spell) override
        {
            float x, y, z, o;
            me->GetHomePosition(x, y, z, o);
            me->NearTeleportTo(x, y, z, o);
            InAction = true;
            switch (Spell->Id)
            {
                case SPELL_OPEN_ALL_PORTALS:
                    DoCastAOE(SPELL_OPEN_PORTAL);
                    break;
                case SPELL_OPEN_PORTAL_2:
                    DoCastAOE(SPELL_OPEN_PORTAL);
                    SummonSentinel = true;
>>>>>>> origin/master
                    break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
<<<<<<< HEAD
            _scheduler.Update(diff);
        }

    private:
        TaskScheduler _scheduler;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<npc_muru_portalAI>(creature);
    }
=======
            if (!SummonSentinel)
            {
                if (InAction && instance->GetBossState(DATA_MURU) == NOT_STARTED)
                    Reset();
                return;
            }

            if (SummonTimer <= diff)
            {
                DoCastAOE(SPELL_SUMMON_VOID_SENTINEL, false);
                SummonTimer = 5000;
                SummonSentinel = false;
            } else SummonTimer -= diff;
        }
    };
>>>>>>> origin/master
};

class npc_dark_fiend : public CreatureScript
{
public:
    npc_dark_fiend() : CreatureScript("npc_dark_fiend") { }

<<<<<<< HEAD
=======
    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_dark_fiendAI(creature);
    }

>>>>>>> origin/master
    struct npc_dark_fiendAI : public ScriptedAI
    {
        npc_dark_fiendAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
<<<<<<< HEAD
            me->SetDisplayId(me->GetCreatureTemplate()->Modelid2);
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_DARKFIEND_SKIN, true);

            _scheduler.Schedule(Seconds(2), [this](TaskContext /*context*/)
            {
                me->SetReactState(REACT_AGGRESSIVE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

                if (Creature* _summoner = ObjectAccessor::GetCreature(*me, _summonerGUID))
                    if (Unit* target = _summoner->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0))
                        AttackStart(target);
            });

            _scheduler.Schedule(Seconds(3), [this](TaskContext context)
            {
                if (me->IsWithinDist(me->GetVictim(), 5.0f) && me->HasAura(SPELL_DARKFIEND_SKIN))
                {
                    DoCastAOE(SPELL_DARKFIEND_DAMAGE, false);
                    me->DisappearAndDie();
                }

                context.Repeat(Milliseconds(500));
            });
        }

        void IsSummonedBy(Unit* summoner) override
        {
            _summonerGUID = summoner->GetGUID();
        }

        bool CanAIAttack(Unit const* /*target*/) const override
        {
            return me->HasAura(SPELL_DARKFIEND_SKIN);
=======
            WaitTimer = 2000;
            InAction = false;
        }

        uint32 WaitTimer;
        bool InAction;

        void Reset() override
        {
            Initialize();

            me->AddUnitState(UNIT_STATE_STUNNED);
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo* Spell) override
        {
            for (uint8 i = 0; i < 3; ++i)
                if (Spell->Effects[i].Effect == 38)
                    me->DisappearAndDie();
>>>>>>> origin/master
        }

        void UpdateAI(uint32 diff) override
        {
<<<<<<< HEAD
            _scheduler.Update(diff);
        }

    private:
        TaskScheduler _scheduler;
        ObjectGuid _summonerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<npc_dark_fiendAI>(creature);
    }
=======
            if (!UpdateVictim())
                return;

            if (WaitTimer <= diff)
            {
                if (!InAction)
                {
                    me->ClearUnitState(UNIT_STATE_STUNNED);
                    DoCastAOE(SPELL_DARKFIEND_SKIN, false);
                    AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true));
                    InAction = true;
                    WaitTimer = 500;
                }
                else
                {
                    if (me->IsWithinDist(me->GetVictim(), 5))
                    {
                        DoCastAOE(SPELL_DARKFIEND_AOE, false);
                        me->DisappearAndDie();
                    }
                    WaitTimer = 500;
                }
            } else WaitTimer -= diff;
        }
    };
>>>>>>> origin/master
};

class npc_void_sentinel : public CreatureScript
{
public:
    npc_void_sentinel() : CreatureScript("npc_void_sentinel") { }

<<<<<<< HEAD
=======
    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_void_sentinelAI(creature);
    }

>>>>>>> origin/master
    struct npc_void_sentinelAI : public ScriptedAI
    {
        npc_void_sentinelAI(Creature* creature) : ScriptedAI(creature)
        {
<<<<<<< HEAD
            _instance = me->GetInstanceScript();
        }

        void IsSummonedBy(Unit* /*summoner*/) override
        {
            if (Creature* muru = ObjectAccessor::GetCreature(*me, _instance->GetGuidData(DATA_MURU)))
                muru->AI()->JustSummoned(me);
        }

        void EnterCombat(Unit* /*who*/) override
        {
            DoCast(me, SPELL_SHADOW_PULSE_PERIODIC, true);

            _scheduler.Schedule(Seconds(45), [this](TaskContext context)
            {
                DoCastVictim(SPELL_VOID_BLAST, false);

                context.Repeat();
            });
        }

        void JustDied(Unit* /*killer*/) override
        {
            for (uint8 i = 0; i < MAX_VOID_SPAWNS; ++i)
                DoCastAOE(SPELL_SUMMON_VOID_SPAWN, true);
=======
            Initialize();
        }

        void Initialize()
        {
            PulseTimer = 3000;
            VoidBlastTimer = 45000; //is this a correct timer?
        }

        uint32 PulseTimer;
        uint32 VoidBlastTimer;

        void Reset() override
        {
            Initialize();

            float x, y, z, o;
            me->GetHomePosition(x, y, z, o);
            me->NearTeleportTo(x, y, 71, o);
        }

        void JustDied(Unit* killer) override
        {
            for (uint8 i = 0; i < 8; ++i)
                if (Creature* temp = me->SummonCreature(NPC_VOID_SPAWN, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), float(rand32() % 6), TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 180000))
                    temp->AI()->AttackStart(killer);
>>>>>>> origin/master
        }

        void UpdateAI(uint32 diff) override
        {
<<<<<<< HEAD
            _scheduler.Update(diff, [this]
            {
                DoMeleeAttackIfReady();
            });
        }

    private:
        TaskScheduler _scheduler;
        InstanceScript* _instance;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<npc_void_sentinelAI>(creature);
    }
=======
            if (!UpdateVictim())
                return;

            if (PulseTimer <= diff)
            {
                DoCastAOE(SPELL_SHADOW_PULSE, true);
                PulseTimer = 3000;
            } else PulseTimer -= diff;

            if (VoidBlastTimer <= diff)
            {
                DoCastVictim(SPELL_VOID_BLAST, false);
                VoidBlastTimer = 45000;
            } else VoidBlastTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };
>>>>>>> origin/master
};

class npc_blackhole : public CreatureScript
{
public:
    npc_blackhole() : CreatureScript("npc_blackhole") { }

<<<<<<< HEAD
=======
    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetInstanceAI<npc_blackholeAI>(creature);
    }

>>>>>>> origin/master
    struct npc_blackholeAI : public ScriptedAI
    {
        npc_blackholeAI(Creature* creature) : ScriptedAI(creature)
        {
<<<<<<< HEAD
            _instance = creature->GetInstanceScript();
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
            DoCast(SPELL_BLACKHOLE_SUMMON_VISUAL);

            _scheduler.Schedule(Seconds(15), [this](TaskContext /*context*/)
            {
                me->DisappearAndDie();
            });

            _scheduler.Schedule(Seconds(1), [this](TaskContext context)
            {
                switch (context.GetRepeatCounter())
                {
                    case 0:
                        me->SetReactState(REACT_AGGRESSIVE);
                        DoCast(SPELL_BLACKHOLE_SUMMON_VISUAL_2);
                        if (Unit* victim = ObjectAccessor::GetUnit(*me, _instance->GetGuidData(DATA_PLAYER_GUID)))
                            AttackStart(victim);
                        context.Repeat(Milliseconds(1200));
                        break;
                    case 1:
                        DoCast(SPELL_BLACKHOLE_SUMMON_VISUAL);
                        context.Repeat(Seconds(2));
                        break;
                    case 2:
                        DoCast(SPELL_BLACKHOLE_PASSIVE);
                        DoCast(SPELL_BLACK_HOLE_VISUAL_2);
                        break;
                    default:
                        break;
                }
            });
        }

        void UpdateAI(uint32 diff) override
        {
            _scheduler.Update(diff);
        }

    private:
        TaskScheduler _scheduler;
        InstanceScript* _instance;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetSunwellPlateauAI<npc_blackholeAI>(creature);
    }
};

class spell_summon_blood_elves_script : SpellScriptLoader
{
    public:
        spell_summon_blood_elves_script() : SpellScriptLoader("spell_summon_blood_elves_script") { }

        class spell_summon_blood_elves_script_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_summon_blood_elves_script_SpellScript);

            bool Validate(SpellInfo const* /*spell*/) override
            {
                for (uint8 i = 0; i < MAX_SUMMON_BLOOD_ELVES; ++i)
                    if (!sSpellMgr->GetSpellInfo(SummonBloodElvesSpells[i]))
                        return false;
                return true;
            }

            void HandleScript(SpellEffIndex /*effIndex*/)
            {
                for (uint8 i = 0; i < MAX_SUMMON_BLOOD_ELVES; ++i)
                    GetCaster()->CastSpell((Unit*)nullptr, SummonBloodElvesSpells[urand(0,3)], true);
            }

            void Register() override
            {
                OnEffectHitTarget += SpellEffectFn(spell_summon_blood_elves_script_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const override
        {
            return new spell_summon_blood_elves_script_SpellScript();
        }
};

class spell_muru_darkness : SpellScriptLoader
{
    public:
        spell_muru_darkness() : SpellScriptLoader("spell_muru_darkness") { }

        class spell_muru_darkness_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_muru_darkness_SpellScript);

            bool Validate(SpellInfo const* /*spell*/) override
            {
                for (uint8 i = 0; i < MAX_SUMMON_DARK_FIEND; ++i)
                    if (!sSpellMgr->GetSpellInfo(SummonDarkFiendSpells[i]))
                        return false;
                return true;
            }

            void HandleAfterCast()
            {
                for (uint8 i = 0; i < MAX_SUMMON_DARK_FIEND; ++i)
                    GetCaster()->CastSpell((Unit*)nullptr, SummonDarkFiendSpells[i], true);
            }

            void Register() override
            {
                AfterCast += SpellCastFn(spell_muru_darkness_SpellScript::HandleAfterCast);
            }
        };

        SpellScript* GetSpellScript() const override
        {
            return new spell_muru_darkness_SpellScript();
        }
};

class spell_dark_fiend_skin : public SpellScriptLoader
{
    public:
        spell_dark_fiend_skin() : SpellScriptLoader("spell_dark_fiend_skin") { }

        class spell_dark_fiend_skin_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dark_fiend_skin_AuraScript);

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (GetTargetApplication()->GetRemoveMode() != AURA_REMOVE_BY_ENEMY_SPELL)
                    return;

                if (Creature* target = GetTarget()->ToCreature())
                {
                    target->SetReactState(REACT_PASSIVE);
                    target->AttackStop();
                    target->StopMoving();
                    target->CastSpell(target, SPELL_DARKFIEND_VISUAL, true);
                    target->DespawnOrUnsummon(3000);
                }
            }

            void Register() override
            {
                AfterEffectRemove += AuraEffectRemoveFn(spell_dark_fiend_skin_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const override
        {
            return new spell_dark_fiend_skin_AuraScript();
        }
};

class spell_transform_visual_missile_periodic : public SpellScriptLoader
{
    public:
        spell_transform_visual_missile_periodic() : SpellScriptLoader("spell_transform_visual_missile_periodic") { }

        class spell_transform_visual_missile_periodic_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_transform_visual_missile_periodic_AuraScript);

            void OnPeriodic(AuraEffect const* /*aurEff*/)
            {
                GetTarget()->CastSpell((Unit*)nullptr, RAND(TRANSFORM_VISUAL_MISSILE_1, TRANSFORM_VISUAL_MISSILE_2), true);
            }

            void Register() override
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_transform_visual_missile_periodic_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const override
        {
            return new spell_transform_visual_missile_periodic_AuraScript();
        }
};

class spell_summon_blood_elves_periodic : public SpellScriptLoader
{
    public:
        spell_summon_blood_elves_periodic() : SpellScriptLoader("spell_summon_blood_elves_periodic") { }

        class spell_summon_blood_elves_periodic_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_summon_blood_elves_periodic_AuraScript);

            void OnPeriodic(AuraEffect const* /*aurEff*/)
            {
                GetTarget()->CastSpell((Unit*)nullptr, SPELL_SUMMON_BLOOD_ELVES_SCRIPT, true);
            }

            void Register() override
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_summon_blood_elves_periodic_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const override
        {
            return new spell_summon_blood_elves_periodic_AuraScript();
        }
=======
            Initialize();
            instance = creature->GetInstanceScript();
        }

        void Initialize()
        {
            DespawnTimer = 15000;
            SpellTimer = 5000;
            Phase = 0;
            NeedForAHack = 0;
        }

        InstanceScript* instance;

        uint32 DespawnTimer;
        uint32 SpellTimer;
        uint8 Phase;
        uint8 NeedForAHack;

        void Reset() override
        {
            Initialize();

            me->AddUnitState(UNIT_STATE_STUNNED);
            DoCastAOE(SPELL_BLACKHOLE_SPAWN, true);
        }

        void UpdateAI(uint32 diff) override
        {
            if (SpellTimer <= diff)
            {
                Unit* Victim = ObjectAccessor::GetUnit(*me, instance->GetGuidData(DATA_PLAYER_GUID));
                switch (NeedForAHack)
                {
                    case 0:
                        me->ClearUnitState(UNIT_STATE_STUNNED);
                        DoCastAOE(SPELL_BLACKHOLE_GROW, false);
                        if (Victim)
                            AttackStart(Victim);
                        SpellTimer = 700;
                        NeedForAHack = 2;
                        break;
                    case 1:
                        me->AddAura(SPELL_BLACKHOLE_GROW, me);
                        NeedForAHack = 2;
                        SpellTimer = 600;
                        break;
                    case 2:
                        SpellTimer = 400;
                        NeedForAHack = 3;
                        me->RemoveAura(SPELL_BLACKHOLE_GROW);
                        break;
                    case 3:
                        SpellTimer = urand(400, 900);
                        NeedForAHack = 1;
                        if (Unit* Temp = me->GetVictim())
                        {
                            if (Temp->GetPositionZ() > 73 && Victim)
                                AttackStart(Victim);
                        } else
                            return;
                }
            } else SpellTimer -= diff;

            if (DespawnTimer <= diff)
                me->DisappearAndDie();
            else DespawnTimer -= diff;
        }
    };
>>>>>>> origin/master
};

void AddSC_boss_muru()
{
    new boss_muru();
    new boss_entropius();
    new npc_muru_portal();
    new npc_dark_fiend();
    new npc_void_sentinel();
    new npc_blackhole();
<<<<<<< HEAD
    new spell_summon_blood_elves_script();
    new spell_muru_darkness();
    new spell_dark_fiend_skin();
    new spell_transform_visual_missile_periodic();
    new spell_summon_blood_elves_periodic();
=======
>>>>>>> origin/master
}
