//
//Ex Nihilo
//
gt.large_forge_hammer.findRecipe(32,[<minecraft:cobblestone>],[<liquid:lubricant>*2]).remove();
gt.forge_hammer.findRecipe(32,[<minecraft:cobblestone>],[null]).remove();

gt.forge_hammer.recipeBuilder().inputs([<ore:cobblestone>]).outputs([<minecraft:gravel>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:gravel>]).outputs([<minecraft:sand>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:sand>]).outputs([<exnihilocreatio:block_dust>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:netherrack>]).outputs([<exnihilocreatio:block_netherrack_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:endstone>]).outputs([<exnihilocreatio:block_endstone_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:stoneDiorite>]).outputs([<exnihilocreatio:block_diorite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:stoneAndesite>]).outputs([<exnihilocreatio:block_andesite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<ore:stoneGranite>]).outputs([<exnihilocreatio:block_granite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.forge_hammer.recipeBuilder().inputs([<exnihilocreatio:block_granite_crushed>]).outputs([<minecraft:sand:1>]).duration(16).EUt(24).buildAndRegister();

gt.large_forge_hammer.recipeBuilder().inputs([<ore:cobblestone>]).fluidInputs([<liquid:lubricant>*2]).outputs([<minecraft:gravel>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:gravel>]).fluidInputs([<liquid:lubricant>*2]).outputs([<minecraft:sand>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:sand>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_dust>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:netherrack>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_netherrack_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:endstone>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_endstone_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:stoneDiorite>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_diorite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:stoneAndesite>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_andesite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<ore:stoneGranite>]).fluidInputs([<liquid:lubricant>*2]).outputs([<exnihilocreatio:block_granite_crushed>]).duration(16).EUt(24).buildAndRegister();
gt.large_forge_hammer.recipeBuilder().inputs([<exnihilocreatio:block_granite_crushed>]).fluidInputs([<liquid:lubricant>*2]).outputs([<minecraft:sand:1>]).duration(16).EUt(24).buildAndRegister();

//Ex Nihilo
//Gregify Ex Nihilo
recipes.remove(<ore:stickStone>);
recipes.addShaped(<exnihilocreatio:item_material:6>,[
[gt.file],
[null,<ore:stone>]
]);
recipes.remove(<exnihilocreatio:item_material:7>);
recipes.addShaped(<exnihilocreatio:item_material:7>,[
[<ore:stickStone>,<ore:stone>,<ore:stickStone>],
[<ore:stone>, gt.screwDriver, <ore:stone>],
[<ore:stickStone>,<ore:stone>,<ore:stickStone>]
]);
recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.addShaped(<exnihilocreatio:item_mesh:2>,[
[<ore:stickTinAlloy>,<minecraft:string>,<ore:stickTinAlloy>],
[<minecraft:string>,<ore:stickTinAlloy>,<minecraft:string>],
[<ore:stickTinAlloy>,<minecraft:string>,<ore:stickTinAlloy>]
]);
recipes.remove(<exnihilocreatio:item_mesh:3>);
recipes.addShaped(<exnihilocreatio:item_mesh:3>,[
[<ore:stickSteel>,<minecraft:string>,<ore:stickSteel>],
[<minecraft:string>,<ore:stickSteel>,<minecraft:string>],
[<ore:stickSteel>,<minecraft:string>,<ore:stickSteel>]
]);
recipes.remove(<exnihilocreatio:item_mesh:4>);
recipes.addShaped(<exnihilocreatio:item_mesh:4>,[
[<ore:stickAluminium>,<minecraft:string>,<ore:stickAluminium>],
[<minecraft:string>,<ore:stickAluminium>,<minecraft:string>],
[<ore:stickAluminium>,<minecraft:string>,<ore:stickAluminium>]
]);

recipes.remove(<exnihilocreatio:block_end_cake>);
recipes.addShaped(<exnihilocreatio:block_end_cake>,[
[<forge:bucketfilled>.withTag({FluidName: "if.pink_slime", Amount: 1000}).onlyWithTag({FluidName: "if.pink_slime", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "if.pink_slime", Amount: 1000}).onlyWithTag({FluidName: "if.pink_slime", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "if.pink_slime", Amount: 1000}).onlyWithTag({FluidName: "if.pink_slime", Amount: 1000})],
[<ore:gemEnderEye>,<gregtech:meta_item_1:32725>,<ore:gemEnderEye>],
[<ore:dustHsss>,<ore:dustNaquadria>,<ore:dustHsss>]
]);

//Only the stone hammer
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_iron>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_gold>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_diamond>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_crucible_wood>);

//Stone Hammer Change
recipes.remove(<exnihilocreatio:hammer_stone>);
recipes.addShaped(<exnihilocreatio:hammer_stone>,[
[<minecraft:cobblestone>,<minecraft:cobblestone>],
[<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:stick>],
[<minecraft:cobblestone>,<minecraft:cobblestone>]
]);

//OreDict Dool Recipes
recipes.remove(<exnihilocreatio:item_doll:5>);
recipes.addShaped(<exnihilocreatio:item_doll:5>,[
[<ore:dustSaltpeter>,<ore:dustRedstone>,<ore:dustSaltpeter>],
[<ore:dustGlowstone>,<exnihilocreatio:item_material:5>,<ore:dustGlowstone>],
[<ore:dustSaltpeter>,<minecraft:nether_wart>,<ore:dustSaltpeter>]
]);
recipes.remove(<exnihilocreatio:item_doll:6>);
recipes.addShaped(<exnihilocreatio:item_doll:6>,[
[<ore:dustObsidian>,<ore:dustRedstone>,<ore:dustObsidian>],
[<ore:dustGlowstone>,<exnihilocreatio:item_material:5>,<ore:dustGlowstone>],
[<ore:dustObsidian>,<minecraft:nether_wart>,<ore:dustObsidian>]]);

//Remove Water Wheel Setup
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_auto_sifter>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_waterwheel>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_axle_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_grinder>);


//Ex Compressum
//Remove Compressed Stuff
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:*>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_wood>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_stone>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_iron>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_gold>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_diamond>);
mods.jei.JEI.hide(<excompressum:double_compressed_diamond_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_crook>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:1>);

//Remove Useless Stuff
mods.jei.JEI.removeAndHide(<excompressum:auto_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressed_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:auto_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:bat_zapper>);
mods.jei.JEI.removeAndHide(<excompressum:ore_smasher>);
mods.jei.JEI.removeAndHide(<excompressum:ugly_steel_plating>);
mods.jei.JEI.removeAndHide(<excompressum:auto_heavy_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressor>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressor_rationing>);
mods.jei.JEI.hide(<excompressum:chicken_stick>);
mods.jei.JEI.hide(<excompressum:iron_mesh>);