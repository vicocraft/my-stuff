/*
 *  @Script: Vanilla Plus
 *  @Description: Adiciona algumas coisas a mais relacionadas aos items vanilla do jogo
 */

// CONSTANTES
# Folhas
val leaves = <minecraft:leaves:*>; // Todos os tipos 1
val leaves2 = <minecraft:leaves2:*>; // Todos os tipos 2
val oak_leaves = <minecraft:leaves:0>;
val spruce_leaves = <minecraft:leaves:1>;
val birch_leaves = <minecraft:leaves:2>;
val jungle_leaves = <minecraft:leaves:3>;
val acacia_leaves = <minecraft:leaves2:0>;
val dark_oak_leaves = <minecraft:leaves2:1>;

# Mudas
val sapling = <minecraft:sapling:*>; // Todos os tipos
val oak_sapling = <minecraft:sapling:0>;
val spruce_sapling = <minecraft:sapling:1>;
val birch_sapling = <minecraft:sapling:2>;
val jungle_sapling = <minecraft:sapling:3>;
val acacia_sapling = <minecraft:sapling:4>;
val dark_oak_sapling = <minecraft:sapling:5>;

# Solos/"Terras"
val dirt = <minecraft:dirt:0>;
val coarse_dirt = <minecraft:dirt:1>;
val podzol = <minecraft:dirt:2>;
val grass = <minecraft:grass>;
val mycelium = <minecraft:mycelium>;

# Corantes
val cactus_green = <minecraft:dye:2>; // Verde
val orange_dye = <minecraft:dye:14>; // Laranja

# Lãs
val any_wool = <minecraft:wool:*>; // Todos os tipos
val white_wool = <minecraft:wool:0>; // Branca

# Armaduras para cavalo
val iron_horse_armor = <minecraft:iron_horse_armor>;
val golden_horse_armor = <minecraft:golden_horse_armor>;
val diamond_horse_armor = <minecraft:diamond_horse_armor>;

# Metais
val iron_ingot = <minecraft:iron_ingot>;
val iron_nugget = <minecraft:iron_nugget>;
val gold_ingot = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;

# Outros
val stick = <minecraft:stick>;
val water_bucket = <minecraft:water_bucket>;
val slime_ball = <minecraft:slime_ball>;
val pumpkin = <minecraft:pumpkin>;
val potato = <minecraft:potato>;
val poisonous_potato = <minecraft:poisonous_potato>;
val leather = <minecraft:leather>;
val rotten_flesh = <minecraft:rotten_flesh>;
val paper = <minecraft:paper>;
val spider_string = <minecraft:string>;
val name_tag = <minecraft:name_tag>;
val elytra = <minecraft:elytra>;
val saddle = <minecraft:saddle>;
val brown_mushroom = <minecraft:brown_mushroom>;
val red_mushroom = <minecraft:red_mushroom>;

# Plantas
val tallgrassall = <minecraft:tallgrass:*>; // Todos os tipos
val tallgrass = <minecraft:tallgrass:1>; // Apenas a grama
val double_tallgrass = <minecraft:double_plant:2>; // Outra versão da grama
val fern = <minecraft:tallgrass:2>; // Arbusto


// CRAFTING
# Folhas + Graveto -> Muda
recipes.addShaped(oak_sapling, [[oak_leaves, null, null], [stick, null, null], [null, null, null]]);
recipes.addShaped(spruce_sapling, [[spruce_leaves, null, null], [stick, null, null], [null, null, null]]);
recipes.addShaped(birch_sapling, [[birch_leaves, null, null], [stick, null, null], [null, null, null]]);
recipes.addShaped(jungle_sapling, [[jungle_leaves, null, null], [stick, null, null], [null, null, null]]);
recipes.addShaped(acacia_sapling, [[acacia_leaves, null, null], [stick, null, null], [null, null, null]]);
recipes.addShaped(dark_oak_sapling, [[dark_oak_leaves, null, null], [stick, null, null], [null, null, null]]);

# Abóbora -> 4 corantes laranja
recipes.addShapeless(orange_dye * 4, [pumpkin]);

# Cactus Green + Balde d'agua -> Slime Ball
recipes.addShapeless(slime_ball * 4, [water_bucket, cactus_green]);

# 1 corda + 2 papéis -> Etiqueta
recipes.addShapedMirrored(name_tag, [[null, null, spider_string], [null, paper, null], [paper, null, null]]);

# 1 lã branca -> 4 fios
recipes.addShapeless(spider_string * 4, [white_wool]);

# Armadura de cavalo de ferro
recipes.addShapedMirrored(iron_horse_armor, [[iron_ingot, null, iron_ingot], [iron_ingot, iron_ingot, iron_ingot], [iron_ingot, null, iron_ingot]]);

# Armadura de cavalo de ouro
recipes.addShapedMirrored(golden_horse_armor, [[gold_ingot, null, gold_ingot], [gold_ingot, gold_ingot, gold_ingot], [gold_ingot, null, gold_ingot]]);

# Armadura de cavalo de diamante
recipes.addShapedMirrored(diamond_horse_armor, [[diamond, null, diamond], [diamond, diamond, diamond], [diamond, null, diamond]]);

# Elytra
recipes.addShaped(elytra, [[spider_string, spider_string, spider_string], [any_wool, null, any_wool], [any_wool, null, any_wool]]);

# Sela
recipes.addShaped(saddle, [[leather, leather, leather], [iron_nugget, spider_string, iron_nugget], [null, iron_nugget, null]]);

# Micélio
recipes.addShaped(mycelium, [[brown_mushroom, null, null], [dirt, null, null], [null, null, null]]);
recipes.addShaped(mycelium, [[red_mushroom, null, null], [dirt, null, null], [null, null, null]]);

# Grama
recipes.addShaped(grass, [[tallgrassall, null, null], [dirt, null, null], [null, null, null]]);
recipes.addShaped(grass, [[double_tallgrass, null, null], [dirt, null, null], [null, null, null]]);

// FORNALHAS

# Batata podre -> Batata
furnace.addRecipe(potato, poisonous_potato);

# Carne podre -> Couro
furnace.addRecipe(leather, rotten_flesh);

# Folha -> Cactus Green
furnace.addRecipe(cactus_green, leaves);
furnace.addRecipe(cactus_green, leaves2);

# Grama -> Cactus Green
furnace.addRecipe(cactus_green, tallgrassall);
furnace.addRecipe(cactus_green, double_tallgrass);