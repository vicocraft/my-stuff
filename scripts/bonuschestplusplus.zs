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
val compass_gens = bonuschest.addPool("compass_gens", 1, 1, 0, 1);
val map_gens = bonuschest.addPool("map_gens", 1, 3, 0, 1);
val shovel_gens = bonuschest.addPool("shovel_gens", 1, 1, 0, 1);
val sword_gens = bonuschest.addPool("sword_gens", 1, 1, 0, 1);

bed_gens.addItemEntryHelper(<minecraft:bed>, 4, 2, [Functions.parse("count: 1, function: 'minecraft:set_count'"), Functions.setMetadata(0, 15)], []);
compass_gens.addItemEntryHelper(<minecraft:compass>, 3, 1, [Functions.parse("count: 1, function: 'minecraft:set_count'")], []);

map_gens.addItemEntryHelper(<minecraft:map>, 3, 2, [Functions.parse("count: {min: 1, max: 4}, function: 'minecraft:set_count'")], []);

shovel_gens.addItemEntryHelper(<minecraft:stone_shovel>, 1, 1, [Functions.parse("count: 1, function: 'minecraft:set_count'")], []);
shovel_gens.addItemEntryHelper(<minecraft:wooden_shovel>, 3, 1, [Functions.parse("count: 1, function: 'minecraft:set_count'")], []);

sword_gens.addItemEntryHelper(<minecraft:stone_sword>, 1, 1, [Functions.parse("count: 1, function: 'minecraft:set_count'")], []);
sword_gens.addItemEntryHelper(<minecraft:wooden_sword>, 3, 1, [Functions.parse("count: 1, function: 'minecraft:set_count'")], []);