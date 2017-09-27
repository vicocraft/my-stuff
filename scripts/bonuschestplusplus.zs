/*
 *  @Script: BonusChest++
 *  @Description: Adiciona algumas coisas a mais no loot table do BonusChest
 *  @Dependencies: CraftTweaker e LootTweaker
 */
 
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;


val bonuschest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val bed_gens = bonuschest.addPool("bed_gens", 1, 2, 0, 1);

bed_gens.addItemEntryHelper(<minecraft:bed>, 8, 2, [Functions.parse("count: 1, function: 'minecraft:set_count'"), Functions.setMetadata(0, 15)], []);