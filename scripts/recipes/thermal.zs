#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.gtadditions.recipe.Utils;
import mods.tconstruct.Alloy;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	/*
    <abyssalcraft:necronomicon:0>: [
		[
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>],
			[<abyssalcraft:corflesh:0>, <primal:plant_cloth:0>, <abyssalcraft:corflesh:0>],
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>]
		]
	]
    */
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<thermaldynamics:duct_0:3> * 3 : [
		[<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:2>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <ore:ingotSignalum>]
	],
	<thermaldynamics:duct_0:4> * 3 : [
		[<thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:3>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <ore:ingotEnderium>]
	]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<thermaldynamics:duct_64:0>,
	<thermaldynamics:duct_64:2>,
	<thermaldynamics:duct_0:2>,
	<thermaldynamics:duct_0:3>,
	<thermaldynamics:duct_0:4>,
	<thermaldynamics:duct_0:5>,
	<ore:dustLumium>.firstItem,
	<ore:dustSignalum>.firstItem
];

static removeFurnace as IIngredient[] = [
	<ore:ingotSignalum>,
	<ore:ingotLumium>,
];

function machineRecipes() {

	val hardenedGlasses as IIngredient[IItemStack] = {
		<thermalfoundation:glass:0> : <ore:dustCopper>,
		<thermalfoundation:glass:1> : <ore:dustTin>,
		<thermalfoundation:glass:2> : <ore:dustSilver>,
		<thermalfoundation:glass:4> : <ore:dustAluminium>,
		<thermalfoundation:glass:5> : <ore:dustNickel>,
		<thermalfoundation:glass:6> : <ore:dustPlatinum>,
		<thermalfoundation:glass:7> : <ore:dustIridium>,
		//<thermalfoundation:glass:8> : <ore:dustCopper>,
		<thermalfoundation:glass_alloy:0> : <ore:dustSteel>,
		<thermalfoundation:glass_alloy:1> : <ore:dustElectrum>,
		<thermalfoundation:glass_alloy:2> : <ore:dustInvar>,
		<thermalfoundation:glass_alloy:3> : <ore:dustBronze>,
		<thermalfoundation:glass_alloy:4> : <ore:dustConstantan>,
		<thermalfoundation:glass_alloy:5> : <ore:dustSignalum>,
		<thermalfoundation:glass_alloy:6> : <ore:dustLumium>,
		<thermalfoundation:glass_alloy:7> : <ore:dustEnderium>,
	};

	gt.alloy_smelter.recipeBuilder()
		.inputs([<ore:dustObsidian> * 2, <ore:blockGlass>])
		.outputs([<thermalfoundation:glass:3>])
		.EUt(120).duration(sec(12))
		.buildAndRegister();

	for glass, dust in hardenedGlasses {
		gt.alloy_smelter.recipeBuilder()
			.inputs([dust * 2, <ore:blockGlassHardened>])
			.outputs([glass])
			.EUt(120).duration(sec(12))
			.buildAndRegister();
	}

	// Siganlum
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustCopper> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:redstone> * 1000])
        .outputs([<ore:dustSignalum>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.blast_furnace.recipeBuilder()
		.inputs([<ore:dustSignalum> * 1])
		.property("temperature", 3800)
		.outputs([<ore:ingotSignalum>.firstItem * 1])
		.duration(sec(210))
		.EUt(120)
		.buildAndRegister();

	// Lumium
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustTin> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:glowstone> * 1000])
        .outputs([<ore:dustLumium>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.blast_furnace.recipeBuilder()
		.inputs([<ore:dustLumium> * 1])
		.property("temperature", 3800)
		.outputs([<ore:ingotLumium>.firstItem * 1])
		.duration(sec(210))
		.EUt(120)
		.buildAndRegister();

	//Element dust
	Utils.removeRecipeByOutput(gt.large_mixer, [<gregtech:meta_item_1:2991> * 2], [], true); //Pyrotheum
	Utils.removeRecipeByOutput(gt.mixer, [<gregtech:meta_item_1:2991> * 2], [], true); //Pyrotheum
	Utils.removeRecipeByOutput(gt.large_mixer, [<gregtech:meta_item_1:2952> * 2], [], true); //Cryotheum
	Utils.removeRecipeByOutput(gt.mixer, [<gregtech:meta_item_1:2952> * 2], [], true); //Cryotheum
	gt.large_mixer.recipeBuilder()
        .inputs([<minecraft:blaze_powder> * 2, <ore:dustRedstone>, <ore:dustSulfur>])
        .outputs([<thermalfoundation:material:1024> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustBlizz> * 2, <ore:dustRedstone>, <minecraft:snowball>])
        .outputs([<thermalfoundation:material:1025> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2051> * 2, <ore:dustRedstone>, <ore:dustSaltpeter>])
        .outputs([<thermalfoundation:material:1026> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2053> * 2, <ore:dustRedstone>, <ore:dustObsidian>])
        .outputs([<thermalfoundation:material:1027> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();

	// Fluid from dust
	gt.fluid_extractor.recipeBuilder()
        .inputs([<thermalfoundation:material:1026>])
        .fluidOutputs([<liquid:aerotheum> * 250])
        .EUt(2).duration(32)
        .buildAndRegister();
	gt.fluid_extractor.recipeBuilder()
        .inputs([<thermalfoundation:material:1027>])
        .fluidOutputs([<liquid:petrotheum> * 250])
        .EUt(2).duration(32)
        .buildAndRegister();

	// Viaducts
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_64:3>])
        .fluidInputs([<liquid:aerotheum> * 125])
        .outputs([<thermaldynamics:duct_64:0>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_64:1>])
        .fluidInputs([<liquid:ender> * 125])
        .outputs([<thermaldynamics:duct_64:2>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();

	// Fluxducts
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_0:6>])
        .fluidInputs([<liquid:redstone> * 200])
        .outputs([<thermaldynamics:duct_0:2>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_0:9>])
        .fluidInputs([<liquid:cryotheum> * 500])
        .outputs([<thermaldynamics:duct_0:5>])
        .EUt(240).duration(sec(14))
        .buildAndRegister();

	// remove alloying in smeltery
	Alloy.removeRecipe(<liquid:lumium>);
	Alloy.removeRecipe(<liquid:signalum>);
	Alloy.removeRecipe(<liquid:enderium>);
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}