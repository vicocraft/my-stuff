/*
 *  @Script: Vanilla Plus
 *  @Description: Adiciona algumas coisas a mais relacionadas aos items vanilla do jogo
 */

// CONSTANTES
# Folhas (todos os tipos)
val leaves = <minecraft:leaves>.anyDamage();
val leaves2 = <minecraft:leaves2>.anyDamage();
# Corantes
val cactus_green = <minecraft:dye:2>; // Verde
# Outros
val water_bucket = <minecraft:water_bucket>;
val slime_ball = <minecraft:slime_ball>;
val potato = <minecraft:potato>;
val poisonous_potato = <minecraft:poisonous_potato>;
val leather = <minecraft:leather>;
val rotten_flesh = <minecraft:rotten_flesh>;

// CRAFTING
# Folha -> Cactus Green
recipes.addShapeless(cactus_green,[leaves]);
recipes.addShapeless(cactus_green,[leaves2]);

# Cactus Green + Balde d'agua -> Slime Ball
recipes.addShapeless(slime_ball,[water_bucket,cactus_green]);

// FORNALHAS

# Batata podre -> Batata
furnace.addRecipe(potato, poisonous_potato);

# Carne podre -> Couro
furnace.addRecipe(leather, rotten_flesh);
