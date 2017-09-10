/*
 *  @Script: Vanilla Plus
 *  @Description: Adiciona algumas coisas a mais relacionadas aos items vanilla do jogo
 */

// CONSTANTES
# Folhas (todos os tipos)
val leaves = <minecraft:leaves:*>;
val leaves2 = <minecraft:leaves2:*>;

# Corantes
val cactus_green = <minecraft:dye:2>; // Verde

# Lãs
val any_wool = <minecraft:wool:*>; // Todos os tipos
val white_wool = <minecraft:wool:0>; // Branca

# Armaduras para cavalo
val iron_horse_armor = <minecraft:iron_horse_armor>;
val golden_horse_armor = <minecraft:golden_horse_armor>;
val diamond_horse_armor = <minecraft:diamond_horse_armor>;

# Metais
val iron_ingot = <minecraft:iron_ingot>;
val gold_ingot = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;

# Outros
val water_bucket = <minecraft:water_bucket>;
val slime_ball = <minecraft:slime_ball>;
val potato = <minecraft:potato>;
val poisonous_potato = <minecraft:poisonous_potato>;
val leather = <minecraft:leather>;
val rotten_flesh = <minecraft:rotten_flesh>;
val paper = <minecraft:paper>;
val spider_string = <minecraft:string>;
val name_tag = <minecraft:name_tag>;
val elytra = <minecraft:elytra>;

// CRAFTING
# Folha -> Cactus Green
recipes.addShapeless(cactus_green, [leaves]);
recipes.addShapeless(cactus_green, [leaves2]);

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

// FORNALHAS

# Batata podre -> Batata
furnace.addRecipe(potato, poisonous_potato);

# Carne podre -> Couro
furnace.addRecipe(leather, rotten_flesh);
