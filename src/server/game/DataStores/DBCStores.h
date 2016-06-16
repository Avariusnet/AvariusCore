/*
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
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

#ifndef TRINITY_DBCSTORES_H
#define TRINITY_DBCSTORES_H

#include "Common.h"
#include "DBCStore.h"
#include "DBCStructure.h"
#include "SharedDefines.h"

#include <list>

typedef std::list<uint32> SimpleFactionsList;
<<<<<<< HEAD
TC_GAME_API SimpleFactionsList const* GetFactionTeamList(uint32 faction);

TC_GAME_API char* GetPetName(uint32 petfamily, uint32 dbclang);
TC_GAME_API uint32 GetTalentSpellCost(uint32 spellId);
TC_GAME_API TalentSpellPos const* GetTalentSpellPos(uint32 spellId);

TC_GAME_API char const* GetRaceName(uint8 race, uint8 locale);
TC_GAME_API char const* GetClassName(uint8 class_, uint8 locale);

TC_GAME_API WMOAreaTableEntry const* GetWMOAreaTableEntryByTripple(int32 rootid, int32 adtid, int32 groupid);

TC_GAME_API uint32 GetVirtualMapForMapAndZone(uint32 mapid, uint32 zoneId);
=======
SimpleFactionsList const* GetFactionTeamList(uint32 faction);

char* GetPetName(uint32 petfamily, uint32 dbclang);
uint32 GetTalentSpellCost(uint32 spellId);
TalentSpellPos const* GetTalentSpellPos(uint32 spellId);

char const* GetRaceName(uint8 race, uint8 locale);
char const* GetClassName(uint8 class_, uint8 locale);

WMOAreaTableEntry const* GetWMOAreaTableEntryByTripple(int32 rootid, int32 adtid, int32 groupid);

uint32 GetVirtualMapForMapAndZone(uint32 mapid, uint32 zoneId);
>>>>>>> origin/master

enum ContentLevels
{
    CONTENT_1_60 = 0,
    CONTENT_61_70,
    CONTENT_71_80
};
<<<<<<< HEAD
TC_GAME_API ContentLevels GetContentLevelsForMapAndZone(uint32 mapid, uint32 zoneId);

TC_GAME_API bool IsTotemCategoryCompatiableWith(uint32 itemTotemCategoryId, uint32 requiredTotemCategoryId);

TC_GAME_API void Zone2MapCoordinates(float &x, float &y, uint32 zone);
TC_GAME_API void Map2ZoneCoordinates(float &x, float &y, uint32 zone);

typedef std::map<uint32/*pair32(map, diff)*/, MapDifficulty> MapDifficultyMap;
TC_GAME_API MapDifficulty const* GetMapDifficultyData(uint32 mapId, Difficulty difficulty);
TC_GAME_API MapDifficulty const* GetDownscaledMapDifficultyData(uint32 mapId, Difficulty &difficulty);

TC_GAME_API uint32 const* /*[MAX_TALENT_TABS]*/ GetTalentTabPages(uint8 cls);

TC_GAME_API uint32 GetLiquidFlags(uint32 liquidType);

TC_GAME_API PvPDifficultyEntry const* GetBattlegroundBracketByLevel(uint32 mapid, uint32 level);
TC_GAME_API PvPDifficultyEntry const* GetBattlegroundBracketById(uint32 mapid, BattlegroundBracketId id);

TC_GAME_API CharStartOutfitEntry const* GetCharStartOutfitEntry(uint8 race, uint8 class_, uint8 gender);
TC_GAME_API CharSectionsEntry const* GetCharSectionEntry(uint8 race, CharSectionType genType, uint8 gender, uint8 type, uint8 color);

TC_GAME_API LFGDungeonEntry const* GetLFGDungeon(uint32 mapId, Difficulty difficulty);

TC_GAME_API uint32 GetDefaultMapLight(uint32 mapId);

typedef std::unordered_multimap<uint32, SkillRaceClassInfoEntry const*> SkillRaceClassInfoMap;
typedef std::pair<SkillRaceClassInfoMap::iterator, SkillRaceClassInfoMap::iterator> SkillRaceClassInfoBounds;
TC_GAME_API SkillRaceClassInfoEntry const* GetSkillRaceClassInfo(uint32 skill, uint8 race, uint8 class_);

TC_GAME_API ResponseCodes ValidateName(std::string const& name, LocaleConstant locale);

TC_GAME_API EmotesTextSoundEntry const* FindTextSoundEmoteFor(uint32 emote, uint32 race, uint32 gender);

TC_GAME_API extern DBCStorage <AchievementEntry>             sAchievementStore;
TC_GAME_API extern DBCStorage <AchievementCriteriaEntry>     sAchievementCriteriaStore;
TC_GAME_API extern DBCStorage <AreaTableEntry>               sAreaTableStore;
TC_GAME_API extern DBCStorage <AreaGroupEntry>               sAreaGroupStore;
TC_GAME_API extern DBCStorage <AreaPOIEntry>                 sAreaPOIStore;
TC_GAME_API extern DBCStorage <AreaTriggerEntry>             sAreaTriggerStore;
TC_GAME_API extern DBCStorage <AuctionHouseEntry>            sAuctionHouseStore;
TC_GAME_API extern DBCStorage <BankBagSlotPricesEntry>       sBankBagSlotPricesStore;
TC_GAME_API extern DBCStorage <BannedAddOnsEntry>            sBannedAddOnsStore;
TC_GAME_API extern DBCStorage <BarberShopStyleEntry>         sBarberShopStyleStore;
TC_GAME_API extern DBCStorage <BattlemasterListEntry>        sBattlemasterListStore;
TC_GAME_API extern DBCStorage <ChatChannelsEntry>            sChatChannelsStore;
TC_GAME_API extern DBCStorage <CharStartOutfitEntry>         sCharStartOutfitStore;
TC_GAME_API extern DBCStorage <CharSectionsEntry>            sCharSectionsStore;
TC_GAME_API extern DBCStorage <CharTitlesEntry>              sCharTitlesStore;
TC_GAME_API extern DBCStorage <ChrClassesEntry>              sChrClassesStore;
TC_GAME_API extern DBCStorage <ChrRacesEntry>                sChrRacesStore;
TC_GAME_API extern DBCStorage <CinematicCameraEntry>         sCinematicCameraStore;
TC_GAME_API extern DBCStorage <CinematicSequencesEntry>      sCinematicSequencesStore;
TC_GAME_API extern DBCStorage <CreatureDisplayInfoEntry>     sCreatureDisplayInfoStore;
TC_GAME_API extern DBCStorage <CreatureDisplayInfoExtraEntry> sCreatureDisplayInfoExtraStore;
TC_GAME_API extern DBCStorage <CreatureFamilyEntry>          sCreatureFamilyStore;
TC_GAME_API extern DBCStorage <CreatureModelDataEntry>       sCreatureModelDataStore;
TC_GAME_API extern DBCStorage <CreatureSpellDataEntry>       sCreatureSpellDataStore;
TC_GAME_API extern DBCStorage <CreatureTypeEntry>            sCreatureTypeStore;
TC_GAME_API extern DBCStorage <CurrencyTypesEntry>           sCurrencyTypesStore;
TC_GAME_API extern DBCStorage <DestructibleModelDataEntry>   sDestructibleModelDataStore;
TC_GAME_API extern DBCStorage <DungeonEncounterEntry>        sDungeonEncounterStore;
TC_GAME_API extern DBCStorage <DurabilityCostsEntry>         sDurabilityCostsStore;
TC_GAME_API extern DBCStorage <DurabilityQualityEntry>       sDurabilityQualityStore;
TC_GAME_API extern DBCStorage <EmotesEntry>                  sEmotesStore;
TC_GAME_API extern DBCStorage <EmotesTextEntry>              sEmotesTextStore;
TC_GAME_API extern DBCStorage <EmotesTextSoundEntry>         sEmotesTextSoundStore;
TC_GAME_API extern DBCStorage <FactionEntry>                 sFactionStore;
TC_GAME_API extern DBCStorage <FactionTemplateEntry>         sFactionTemplateStore;
TC_GAME_API extern DBCStorage <GameObjectDisplayInfoEntry>   sGameObjectDisplayInfoStore;
TC_GAME_API extern DBCStorage <GemPropertiesEntry>           sGemPropertiesStore;
TC_GAME_API extern DBCStorage <GlyphPropertiesEntry>         sGlyphPropertiesStore;
TC_GAME_API extern DBCStorage <GlyphSlotEntry>               sGlyphSlotStore;

TC_GAME_API extern DBCStorage <GtBarberShopCostBaseEntry>    sGtBarberShopCostBaseStore;
TC_GAME_API extern DBCStorage <GtCombatRatingsEntry>         sGtCombatRatingsStore;
TC_GAME_API extern DBCStorage <GtChanceToMeleeCritBaseEntry> sGtChanceToMeleeCritBaseStore;
TC_GAME_API extern DBCStorage <GtChanceToMeleeCritEntry>     sGtChanceToMeleeCritStore;
TC_GAME_API extern DBCStorage <GtChanceToSpellCritBaseEntry> sGtChanceToSpellCritBaseStore;
TC_GAME_API extern DBCStorage <GtChanceToSpellCritEntry>     sGtChanceToSpellCritStore;
TC_GAME_API extern DBCStorage <GtNPCManaCostScalerEntry>     sGtNPCManaCostScalerStore;
TC_GAME_API extern DBCStorage <GtOCTClassCombatRatingScalarEntry> sGtOCTClassCombatRatingScalarStore;
TC_GAME_API extern DBCStorage <GtOCTRegenHPEntry>            sGtOCTRegenHPStore;
//TC_GAME_API extern DBCStorage <GtOCTRegenMPEntry>            sGtOCTRegenMPStore; -- not used currently
TC_GAME_API extern DBCStorage <GtRegenHPPerSptEntry>         sGtRegenHPPerSptStore;
TC_GAME_API extern DBCStorage <GtRegenMPPerSptEntry>         sGtRegenMPPerSptStore;
TC_GAME_API extern DBCStorage <HolidaysEntry>                sHolidaysStore;
TC_GAME_API extern DBCStorage <ItemEntry>                    sItemStore;
TC_GAME_API extern DBCStorage <ItemBagFamilyEntry>           sItemBagFamilyStore;
//TC_GAME_API extern DBCStorage <ItemDisplayInfoEntry>      sItemDisplayInfoStore; -- not used currently
TC_GAME_API extern DBCStorage <ItemExtendedCostEntry>        sItemExtendedCostStore;
TC_GAME_API extern DBCStorage <ItemLimitCategoryEntry>       sItemLimitCategoryStore;
TC_GAME_API extern DBCStorage <ItemRandomPropertiesEntry>    sItemRandomPropertiesStore;
TC_GAME_API extern DBCStorage <ItemRandomSuffixEntry>        sItemRandomSuffixStore;
TC_GAME_API extern DBCStorage <ItemSetEntry>                 sItemSetStore;
TC_GAME_API extern DBCStorage <LFGDungeonEntry>              sLFGDungeonStore;
TC_GAME_API extern DBCStorage <LiquidTypeEntry>              sLiquidTypeStore;
TC_GAME_API extern DBCStorage <LockEntry>                    sLockStore;
TC_GAME_API extern DBCStorage <MailTemplateEntry>            sMailTemplateStore;
TC_GAME_API extern DBCStorage <MapEntry>                     sMapStore;
//TC_GAME_API extern DBCStorage <MapDifficultyEntry>           sMapDifficultyStore; -- use GetMapDifficultyData insteed
TC_GAME_API extern MapDifficultyMap                          sMapDifficultyMap;
TC_GAME_API extern DBCStorage <MovieEntry>                   sMovieStore;
TC_GAME_API extern DBCStorage <OverrideSpellDataEntry>       sOverrideSpellDataStore;
TC_GAME_API extern DBCStorage <PowerDisplayEntry>            sPowerDisplayStore;
TC_GAME_API extern DBCStorage <QuestSortEntry>               sQuestSortStore;
TC_GAME_API extern DBCStorage <QuestXPEntry>                 sQuestXPStore;
TC_GAME_API extern DBCStorage <QuestFactionRewEntry>         sQuestFactionRewardStore;
TC_GAME_API extern DBCStorage <RandomPropertiesPointsEntry>  sRandomPropertiesPointsStore;
TC_GAME_API extern DBCStorage <ScalingStatDistributionEntry> sScalingStatDistributionStore;
TC_GAME_API extern DBCStorage <ScalingStatValuesEntry>       sScalingStatValuesStore;
TC_GAME_API extern DBCStorage <SkillLineEntry>               sSkillLineStore;
TC_GAME_API extern DBCStorage <SkillLineAbilityEntry>        sSkillLineAbilityStore;
TC_GAME_API extern DBCStorage <SkillTiersEntry>              sSkillTiersStore;
TC_GAME_API extern DBCStorage <SoundEntriesEntry>            sSoundEntriesStore;
TC_GAME_API extern DBCStorage <SpellCastTimesEntry>          sSpellCastTimesStore;
TC_GAME_API extern DBCStorage <SpellCategoryEntry>           sSpellCategoryStore;
TC_GAME_API extern DBCStorage <SpellDifficultyEntry>         sSpellDifficultyStore;
TC_GAME_API extern DBCStorage <SpellDurationEntry>           sSpellDurationStore;
TC_GAME_API extern DBCStorage <SpellFocusObjectEntry>        sSpellFocusObjectStore;
TC_GAME_API extern DBCStorage <SpellItemEnchantmentEntry>    sSpellItemEnchantmentStore;
TC_GAME_API extern DBCStorage <SpellItemEnchantmentConditionEntry> sSpellItemEnchantmentConditionStore;
TC_GAME_API extern PetFamilySpellsStore                      sPetFamilySpellsStore;
TC_GAME_API extern DBCStorage <SpellRadiusEntry>             sSpellRadiusStore;
TC_GAME_API extern DBCStorage <SpellRangeEntry>              sSpellRangeStore;
TC_GAME_API extern DBCStorage <SpellRuneCostEntry>           sSpellRuneCostStore;
TC_GAME_API extern DBCStorage <SpellShapeshiftEntry>         sSpellShapeshiftStore;
TC_GAME_API extern DBCStorage <SpellEntry>                   sSpellStore;
TC_GAME_API extern DBCStorage <StableSlotPricesEntry>        sStableSlotPricesStore;
TC_GAME_API extern DBCStorage <SummonPropertiesEntry>        sSummonPropertiesStore;
TC_GAME_API extern DBCStorage <TalentEntry>                  sTalentStore;
TC_GAME_API extern DBCStorage <TalentTabEntry>               sTalentTabStore;
TC_GAME_API extern DBCStorage <TaxiNodesEntry>               sTaxiNodesStore;
TC_GAME_API extern DBCStorage <TaxiPathEntry>                sTaxiPathStore;
TC_GAME_API extern TaxiMask                                  sTaxiNodesMask;
TC_GAME_API extern TaxiMask                                  sOldContinentsNodesMask;
TC_GAME_API extern TaxiMask                                  sHordeTaxiNodesMask;
TC_GAME_API extern TaxiMask                                  sAllianceTaxiNodesMask;
TC_GAME_API extern TaxiMask                                  sDeathKnightTaxiNodesMask;
TC_GAME_API extern TaxiPathSetBySource                       sTaxiPathSetBySource;
TC_GAME_API extern TaxiPathNodesByPath                       sTaxiPathNodesByPath;
TC_GAME_API extern DBCStorage <TeamContributionPointsEntry>  sTeamContributionPointsStore;
TC_GAME_API extern DBCStorage <TotemCategoryEntry>           sTotemCategoryStore;
TC_GAME_API extern DBCStorage <VehicleEntry>                 sVehicleStore;
TC_GAME_API extern DBCStorage <VehicleSeatEntry>             sVehicleSeatStore;
TC_GAME_API extern DBCStorage <WMOAreaTableEntry>            sWMOAreaTableStore;
//TC_GAME_API extern DBCStorage <WorldMapAreaEntry>           sWorldMapAreaStore; -- use Zone2MapCoordinates and Map2ZoneCoordinates
TC_GAME_API extern DBCStorage <WorldMapOverlayEntry>         sWorldMapOverlayStore;
TC_GAME_API extern DBCStorage <WorldSafeLocsEntry>           sWorldSafeLocsStore;

TC_GAME_API void LoadDBCStores(const std::string& dataPath);
=======
ContentLevels GetContentLevelsForMapAndZone(uint32 mapid, uint32 zoneId);

bool IsTotemCategoryCompatiableWith(uint32 itemTotemCategoryId, uint32 requiredTotemCategoryId);

void Zone2MapCoordinates(float &x, float &y, uint32 zone);
void Map2ZoneCoordinates(float &x, float &y, uint32 zone);

typedef std::map<uint32/*pair32(map, diff)*/, MapDifficulty> MapDifficultyMap;
MapDifficulty const* GetMapDifficultyData(uint32 mapId, Difficulty difficulty);
MapDifficulty const* GetDownscaledMapDifficultyData(uint32 mapId, Difficulty &difficulty);

uint32 const* /*[MAX_TALENT_TABS]*/ GetTalentTabPages(uint8 cls);

uint32 GetLiquidFlags(uint32 liquidType);

PvPDifficultyEntry const* GetBattlegroundBracketByLevel(uint32 mapid, uint32 level);
PvPDifficultyEntry const* GetBattlegroundBracketById(uint32 mapid, BattlegroundBracketId id);

CharStartOutfitEntry const* GetCharStartOutfitEntry(uint8 race, uint8 class_, uint8 gender);
CharSectionsEntry const* GetCharSectionEntry(uint8 race, CharSectionType genType, uint8 gender, uint8 type, uint8 color);

LFGDungeonEntry const* GetLFGDungeon(uint32 mapId, Difficulty difficulty);

uint32 GetDefaultMapLight(uint32 mapId);

typedef std::unordered_multimap<uint32, SkillRaceClassInfoEntry const*> SkillRaceClassInfoMap;
typedef std::pair<SkillRaceClassInfoMap::iterator, SkillRaceClassInfoMap::iterator> SkillRaceClassInfoBounds;
SkillRaceClassInfoEntry const* GetSkillRaceClassInfo(uint32 skill, uint8 race, uint8 class_);

ResponseCodes ValidateName(std::string const& name, LocaleConstant locale);

EmotesTextSoundEntry const* FindTextSoundEmoteFor(uint32 emote, uint32 race, uint32 gender);

extern DBCStorage <AchievementEntry>             sAchievementStore;
extern DBCStorage <AchievementCriteriaEntry>     sAchievementCriteriaStore;
extern DBCStorage <AreaTableEntry>               sAreaTableStore;
extern DBCStorage <AreaGroupEntry>               sAreaGroupStore;
extern DBCStorage <AreaPOIEntry>                 sAreaPOIStore;
extern DBCStorage <AreaTriggerEntry>             sAreaTriggerStore;
extern DBCStorage <AuctionHouseEntry>            sAuctionHouseStore;
extern DBCStorage <BankBagSlotPricesEntry>       sBankBagSlotPricesStore;
extern DBCStorage <BannedAddOnsEntry>            sBannedAddOnsStore;
extern DBCStorage <BarberShopStyleEntry>         sBarberShopStyleStore;
extern DBCStorage <BattlemasterListEntry>        sBattlemasterListStore;
extern DBCStorage <ChatChannelsEntry>            sChatChannelsStore;
extern DBCStorage <CharStartOutfitEntry>         sCharStartOutfitStore;
extern DBCStorage <CharSectionsEntry>            sCharSectionsStore;
extern DBCStorage <CharTitlesEntry>              sCharTitlesStore;
extern DBCStorage <ChrClassesEntry>              sChrClassesStore;
extern DBCStorage <ChrRacesEntry>                sChrRacesStore;
extern DBCStorage <CinematicSequencesEntry>      sCinematicSequencesStore;
extern DBCStorage <CreatureDisplayInfoEntry>     sCreatureDisplayInfoStore;
extern DBCStorage <CreatureDisplayInfoExtraEntry> sCreatureDisplayInfoExtraStore;
extern DBCStorage <CreatureFamilyEntry>          sCreatureFamilyStore;
extern DBCStorage <CreatureModelDataEntry>       sCreatureModelDataStore;
extern DBCStorage <CreatureSpellDataEntry>       sCreatureSpellDataStore;
extern DBCStorage <CreatureTypeEntry>            sCreatureTypeStore;
extern DBCStorage <CurrencyTypesEntry>           sCurrencyTypesStore;
extern DBCStorage <DestructibleModelDataEntry>   sDestructibleModelDataStore;
extern DBCStorage <DungeonEncounterEntry>        sDungeonEncounterStore;
extern DBCStorage <DurabilityCostsEntry>         sDurabilityCostsStore;
extern DBCStorage <DurabilityQualityEntry>       sDurabilityQualityStore;
extern DBCStorage <EmotesEntry>                  sEmotesStore;
extern DBCStorage <EmotesTextEntry>              sEmotesTextStore;
extern DBCStorage <EmotesTextSoundEntry>         sEmotesTextSoundStore;
extern DBCStorage <FactionEntry>                 sFactionStore;
extern DBCStorage <FactionTemplateEntry>         sFactionTemplateStore;
extern DBCStorage <GameObjectDisplayInfoEntry>   sGameObjectDisplayInfoStore;
extern DBCStorage <GemPropertiesEntry>           sGemPropertiesStore;
extern DBCStorage <GlyphPropertiesEntry>         sGlyphPropertiesStore;
extern DBCStorage <GlyphSlotEntry>               sGlyphSlotStore;

extern DBCStorage <GtBarberShopCostBaseEntry>    sGtBarberShopCostBaseStore;
extern DBCStorage <GtCombatRatingsEntry>         sGtCombatRatingsStore;
extern DBCStorage <GtChanceToMeleeCritBaseEntry> sGtChanceToMeleeCritBaseStore;
extern DBCStorage <GtChanceToMeleeCritEntry>     sGtChanceToMeleeCritStore;
extern DBCStorage <GtChanceToSpellCritBaseEntry> sGtChanceToSpellCritBaseStore;
extern DBCStorage <GtChanceToSpellCritEntry>     sGtChanceToSpellCritStore;
extern DBCStorage <GtNPCManaCostScalerEntry>     sGtNPCManaCostScalerStore;
extern DBCStorage <GtOCTClassCombatRatingScalarEntry> sGtOCTClassCombatRatingScalarStore;
extern DBCStorage <GtOCTRegenHPEntry>            sGtOCTRegenHPStore;
//extern DBCStorage <GtOCTRegenMPEntry>            sGtOCTRegenMPStore; -- not used currently
extern DBCStorage <GtRegenHPPerSptEntry>         sGtRegenHPPerSptStore;
extern DBCStorage <GtRegenMPPerSptEntry>         sGtRegenMPPerSptStore;
extern DBCStorage <HolidaysEntry>                sHolidaysStore;
extern DBCStorage <ItemEntry>                    sItemStore;
extern DBCStorage <ItemBagFamilyEntry>           sItemBagFamilyStore;
//extern DBCStorage <ItemDisplayInfoEntry>      sItemDisplayInfoStore; -- not used currently
extern DBCStorage <ItemExtendedCostEntry>        sItemExtendedCostStore;
extern DBCStorage <ItemLimitCategoryEntry>       sItemLimitCategoryStore;
extern DBCStorage <ItemRandomPropertiesEntry>    sItemRandomPropertiesStore;
extern DBCStorage <ItemRandomSuffixEntry>        sItemRandomSuffixStore;
extern DBCStorage <ItemSetEntry>                 sItemSetStore;
extern DBCStorage <LFGDungeonEntry>              sLFGDungeonStore;
extern DBCStorage <LiquidTypeEntry>              sLiquidTypeStore;
extern DBCStorage <LockEntry>                    sLockStore;
extern DBCStorage <MailTemplateEntry>            sMailTemplateStore;
extern DBCStorage <MapEntry>                     sMapStore;
//extern DBCStorage <MapDifficultyEntry>           sMapDifficultyStore; -- use GetMapDifficultyData insteed
extern MapDifficultyMap                          sMapDifficultyMap;
extern DBCStorage <MovieEntry>                   sMovieStore;
extern DBCStorage <OverrideSpellDataEntry>       sOverrideSpellDataStore;
extern DBCStorage <PowerDisplayEntry>            sPowerDisplayStore;
extern DBCStorage <QuestSortEntry>               sQuestSortStore;
extern DBCStorage <QuestXPEntry>                 sQuestXPStore;
extern DBCStorage <QuestFactionRewEntry>         sQuestFactionRewardStore;
extern DBCStorage <RandomPropertiesPointsEntry>  sRandomPropertiesPointsStore;
extern DBCStorage <ScalingStatDistributionEntry> sScalingStatDistributionStore;
extern DBCStorage <ScalingStatValuesEntry>       sScalingStatValuesStore;
extern DBCStorage <SkillLineEntry>               sSkillLineStore;
extern DBCStorage <SkillLineAbilityEntry>        sSkillLineAbilityStore;
extern DBCStorage <SkillTiersEntry>              sSkillTiersStore;
extern DBCStorage <SoundEntriesEntry>            sSoundEntriesStore;
extern DBCStorage <SpellCastTimesEntry>          sSpellCastTimesStore;
extern DBCStorage <SpellCategoryEntry>           sSpellCategoryStore;
extern DBCStorage <SpellDifficultyEntry>         sSpellDifficultyStore;
extern DBCStorage <SpellDurationEntry>           sSpellDurationStore;
extern DBCStorage <SpellFocusObjectEntry>        sSpellFocusObjectStore;
extern DBCStorage <SpellItemEnchantmentEntry>    sSpellItemEnchantmentStore;
extern DBCStorage <SpellItemEnchantmentConditionEntry> sSpellItemEnchantmentConditionStore;
extern PetFamilySpellsStore                      sPetFamilySpellsStore;
extern DBCStorage <SpellRadiusEntry>             sSpellRadiusStore;
extern DBCStorage <SpellRangeEntry>              sSpellRangeStore;
extern DBCStorage <SpellRuneCostEntry>           sSpellRuneCostStore;
extern DBCStorage <SpellShapeshiftEntry>         sSpellShapeshiftStore;
extern DBCStorage <SpellEntry>                   sSpellStore;
extern DBCStorage <StableSlotPricesEntry>        sStableSlotPricesStore;
extern DBCStorage <SummonPropertiesEntry>        sSummonPropertiesStore;
extern DBCStorage <TalentEntry>                  sTalentStore;
extern DBCStorage <TalentTabEntry>               sTalentTabStore;
extern DBCStorage <TaxiNodesEntry>               sTaxiNodesStore;
extern DBCStorage <TaxiPathEntry>                sTaxiPathStore;
extern TaxiMask                                  sTaxiNodesMask;
extern TaxiMask                                  sOldContinentsNodesMask;
extern TaxiMask                                  sHordeTaxiNodesMask;
extern TaxiMask                                  sAllianceTaxiNodesMask;
extern TaxiMask                                  sDeathKnightTaxiNodesMask;
extern TaxiPathSetBySource                       sTaxiPathSetBySource;
extern TaxiPathNodesByPath                       sTaxiPathNodesByPath;
extern DBCStorage <TeamContributionPointsEntry>  sTeamContributionPointsStore;
extern DBCStorage <TotemCategoryEntry>           sTotemCategoryStore;
extern DBCStorage <VehicleEntry>                 sVehicleStore;
extern DBCStorage <VehicleSeatEntry>             sVehicleSeatStore;
extern DBCStorage <WMOAreaTableEntry>            sWMOAreaTableStore;
//extern DBCStorage <WorldMapAreaEntry>           sWorldMapAreaStore; -- use Zone2MapCoordinates and Map2ZoneCoordinates
extern DBCStorage <WorldMapOverlayEntry>         sWorldMapOverlayStore;
extern DBCStorage <WorldSafeLocsEntry>           sWorldSafeLocsStore;

void LoadDBCStores(const std::string& dataPath);
>>>>>>> origin/master

#endif
