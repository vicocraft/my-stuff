/*
 *  @Script: Vanilla Plus
 *  @Description: Adiciona algumas coisas a mais relacionadas aos items vanilla do jogo
 */

// CRAFTING
# Folha -> Cactus Green
recipes.addShapeless(<minecraft:dye:2>,<minecraft:leaves>);
recipes.addShapeless(<minecraft:dye:2>,<minecraft:leaves2>);

# Cactus Green + Balde d'agua -> Slime Ball
recipes.addShapeless(<minecraft:slime_ball>,<minecraft:water_bucket>,<minecraft:dye:2>);

// FORNALHAS

# Batata podre -> Batata
furnace.addRecipe(<minecraft:potato>, <minecraft:poisonous_potato>);

# Carne podre -> Couro
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);
