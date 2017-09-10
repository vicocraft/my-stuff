/*
 *  @Script: Vanilla Plus
 *  @Description: Adiciona algumas coisas a mais relacionadas aos items vanilla do jogo
 */

// CRAFTING
# Folha -> Cactus Green
recipes.addShapeless("green_dye_from_leaves",<minecraft:dye:2>,<minecraft:leaves>);
recipes.addShapeless("green_dye_from_new_leaves",<minecraft:dye:2>,<minecraft:leaves2>);

# Cactus Green + Balde d'agua -> Slime Ball
recipes.addShapeless("slime_ball_from_water_and_green_dye",<minecraft:slime_ball>,<minecraft:water_bucket>,<minecraft:dye:2>);

// FORNALHAS

# Batata podre -> Batata
furnace.addRecipe(<minecraft:potato>, <minecraft:poisonous_potato>);

# Carne podre -> Couro
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);
