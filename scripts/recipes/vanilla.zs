#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    <ore:dustFlint>.firstItem : [
		[
			[<ore:gemFlint>],
            [gt.mortar]
		]
    ],
    <minecraft:shears> : [
        [
            [gt.hammer, <ore:plateIron>],
            [<ore:plateIron>, gt.file]
        ]
    ],
    <contenttweaker:unfired_porcelain_brick>*8 : [
        [
            [<ore:clayPorcelain>,<ore:clayPorcelain>,<ore:clayPorcelain>],
            [<ore:clayPorcelain>,<metaitem:wooden_form.brick>,<ore:clayPorcelain>],
            [<ore:clayPorcelain>,<ore:clayPorcelain>,<ore:clayPorcelain>]
        ]
    ]
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
    <minecraft:dirt:1>*3 : [
        [<ore:dirt>,<ore:dirt>,<ore:dirt>,<ore:gravel>]
    ],
    <contenttweaker:unfired_porcelain_brick> : [
        [<ore:clayPorcelain>, <metaitem:wooden_form.brick>]
    ]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
    <projectred-transmission:wire:*>,
    <minecraft:golden_apple>,
    <minecraft:golden_carrot>,
    <minecraft:magma_cream>,
    <minecraft:ender_eye>,
    <minecraft:dirt:1>,
    <minecraft:shears>,
    <minecraft:glass_pane:*>,
    <chisel:glasspane:*>,
    <chisel:iron>,
    <chisel:gold>,
    <chisel:block_coal>,
    <chisel:lapis>,
    <chisel:redstone>,
    <chisel:diamond>,
    <chisel:emerald>
];

static removeFurnace as IIngredient[] = [
    <minecraft:glass>,
    <ceramics:unfired_clay:5>,
    <ceramics:faucet:0>,
    <ceramics:channel:0>,
    <ceramics:porcelain_barrel:0>,
    <ceramics:porcelain_barrel:0>
];

function machineRecipes() {
    //Glass
    furnace.addRecipe(<minecraft:glass>,<tconstruct:clear_glass>);

    furnace.addRecipe(<ceramics:unfired_clay:5>,<contenttweaker:unfired_porcelain_brick>);

    // Redstone Alloy cable
    gt.wiremill.recipeBuilder()
        .inputs([<ore:ingotRedstoneAlloy>])
        .outputs([<projectred-transmission:wire:0> * 4])
        .EUt(8).duration(sec(8))
        .buildAndRegister();


    
    recipes.addShaped(<exnihilocreatio:block_crucible:1>,[
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,<ceramics:unfired_clay:5>,<ceramics:unfired_clay:5>]
    ]);

    recipes.addShaped(<ceramics:faucet>,[
    [null,null,null],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [null,<ceramics:unfired_clay:5>,null]
    ]);
    recipes.addShaped(<ceramics:channel>,[
    [null,null,null],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,<ceramics:unfired_clay:5>,<ceramics:unfired_clay:5>]
    ]);

    furnace.remove(<ceramics:porcelain_barrel:0>);
    recipes.addShaped(<ceramics:porcelain_barrel:0>,[
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [null,<ceramics:unfired_clay:5>,null]
    ]);

    furnace.remove(<ceramics:porcelain_barrel_extension:0>);
    recipes.addShaped(<ceramics:porcelain_barrel_extension:0>,[
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>]
    ]);


    //Building Gadgets
    //Gregification
    recipes.remove(<buildinggadgets:buildingtool>);
    recipes.addShaped(<buildinggadgets:buildingtool>,[
    [<ore:platePlastic>,<gregtech:meta_item_1:32681>,<ore:platePlastic>],
    [<ore:platePlastic>,<ore:lensEmerald>,<ore:platePlastic>],
    [<ore:platePlastic>,<ore:circuitGood>,<ore:platePlastic>]
    ]);

    recipes.remove(<buildinggadgets:exchangertool>);
    recipes.addShaped(<buildinggadgets:exchangertool>,[
    [<gregtech:meta_item_2:32507>,<gregtech:meta_item_2:32448>],
    [<ore:platePlastic>,<buildinggadgets:buildingtool>]
    ]);

    recipes.remove(<buildinggadgets:copypastetool>);
    recipes.addShaped(<buildinggadgets:copypastetool>,[
    [<gregtech:meta_item_1:32691>],
    [<buildinggadgets:buildingtool>]
    ]);

    recipes.remove(<buildinggadgets:templatemanager>);
    recipes.addShaped(<buildinggadgets:templatemanager>,[
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
    [<gregtech:meta_item_1:32691>,<ore:lensEmerald>,<gregtech:meta_item_1:32681>],
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ]);

    recipes.remove(<buildinggadgets:destructiontool>);
    recipes.addShapeless(<buildinggadgets:destructiontool>,[<ore:lensAlmandine>,<buildinggadgets:buildingtool>,<ore:plateVanadiumSteel>]);

    //BlockCraftery
    //Gregify
    recipes.remove(<blockcraftery:editable_block>);
    recipes.addShaped(<blockcraftery:editable_block>*2,[
    [<ore:boltWood>,<ore:stickWood>,<ore:boltWood>],
    [<ore:stickWood>,<gregtech:meta_tool:8>,<ore:stickWood>],
    [<ore:boltWood>,<ore:stickWood>,<ore:boltWood>]
    ]);

    recipes.remove(<blockcraftery:editable_slab>);
    recipes.addShaped(<blockcraftery:editable_slab>,[[<gregtech:meta_tool:6>],[<blockcraftery:editable_block>]]);
    recipes.remove(<blockcraftery:editable_slant>);
    recipes.addShaped(<blockcraftery:editable_slant>*2,[[<gregtech:meta_tool:5>],[null,<blockcraftery:editable_block>]]);
    recipes.remove(<blockcraftery:editable_outer_corner>);
    recipes.addShaped(<blockcraftery:editable_outer_corner>*2,[[<gregtech:meta_tool:5>],[null,<blockcraftery:editable_slant>]]);

    recipes.remove(<blockcraftery:editable_block_reinforced>);
    recipes.addShaped(<blockcraftery:editable_block_reinforced>*2,[
    [<ore:boltWood>,<ore:stickIron>,<ore:boltWood>],
    [<ore:stickIron>,<gregtech:meta_tool:8>,<ore:stickIron>],
    [<ore:boltWood>,<ore:stickIron>,<ore:boltWood>]
    ]);

    recipes.remove(<blockcraftery:editable_slant_reinforced>);
    recipes.addShaped(<blockcraftery:editable_slant_reinforced>*2,[[<gregtech:meta_tool:5>],[null,<blockcraftery:editable_block_reinforced>]]);
    recipes.remove(<blockcraftery:editable_outer_corner_reinforced>);
    recipes.addShaped(<blockcraftery:editable_outer_corner_reinforced>*2,[[<gregtech:meta_tool:5>],[null,<blockcraftery:editable_slant_reinforced>]]);

    //Builder s Wands
    recipes.remove(<betterbuilderswands:wandiron>);
    recipes.addShaped(<betterbuilderswands:wandiron>,[
    [null,<gregtech:meta_tool:6>,<ore:plateIron>],
    [null,<ore:plateIron>,<gregtech:meta_tool:9>],
    [<ore:stickWood>]
    ]);
    recipes.remove(<betterbuilderswands:wanddiamond>);
    recipes.addShaped(<betterbuilderswands:wanddiamond>,[
    [null,<gregtech:meta_tool:6>,<ore:plateDiamond>],
    [null,<ore:plateDiamond>,<gregtech:meta_tool:9>],
    [<ore:stickWood>]
    ]);

    //FMP
    recipes.remove(<microblockcbe:saw_stone>);
    recipes.addShaped(<microblockcbe:saw_stone>,[
    [<ore:stickStone>,<ore:stickStone>,<ore:stickWood>],
    [<minecraft:flint>,<minecraft:flint>,<ore:stickWood>],
    [<gregtech:meta_tool:6>,<gregtech:meta_tool:9>]
    ]);
    recipes.remove(<microblockcbe:saw_iron>);
    recipes.addShaped(<microblockcbe:saw_iron>,[
    [<ore:stickStone>,<ore:stickStone>,<ore:stickWood>],
    [<ore:plateIron>,<ore:plateIron>,<ore:stickWood>],
    [<gregtech:meta_tool:6>,<gregtech:meta_tool:9>]
    ]);
    recipes.remove(<microblockcbe:saw_diamond>);
    recipes.addShaped(<microblockcbe:saw_diamond>,[
    [<ore:stickStone>,<ore:stickStone>,<ore:stickWood>],
    [<ore:plateDiamond>,<ore:plateDiamond>,<ore:stickWood>],
    [<gregtech:meta_tool:6>,<gregtech:meta_tool:9>]
    ]);

    //FlodLights
    recipes.remove(<floodlights:raw_filament>);
    recipes.addShaped(<floodlights:raw_filament>,[
    [null,<ore:dustGlowstone>],
    [<ore:dustRedstone>,<ore:wireFineGold>,<ore:dustRedstone>],
    [null,<ore:dustGlowstone>]
    ]);

    recipes.remove(<floodlights:electric_incandescent_light_bulb>);
    recipes.addShapeless(<floodlights:electric_incandescent_light_bulb>,[<gregtech:meta_item_2:32454>,<floodlights:glowing_filament>,<ore:ringIron>]);

    recipes.remove(<floodlights:electric_floodlight>);
    recipes.addShaped(<floodlights:electric_floodlight>,[
    [<ore:plateTinAlloy>,<ore:plateTinAlloy>,<ore:plateTinAlloy>],
    [<ore:plateTinAlloy>,<floodlights:electric_incandescent_light_bulb>,<ore:plateGlass>],
    [<ore:plateTinAlloy>,<ore:plateTinAlloy>,<ore:plateTinAlloy>]
    ]);

    recipes.remove(<floodlights:uv_floodlight>);
    recipes.addShaped(<floodlights:uv_floodlight>,[
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
    [<ore:plateIron>,<floodlights:electric_incandescent_light_bulb>,<ore:lensRutile>],
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ]);

    recipes.removeByRecipeName("floodlights:block_small_electric_floodlight");
    recipes.addShaped(<floodlights:small_electric_floodlight_meta_block>,[
    [<ore:plateGlass>,<ore:plateGlass>,<ore:plateGlass>],
    [null,<floodlights:electric_incandescent_light_bulb>],
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ]);

    recipes.remove(<floodlights:grow_light>);
    recipes.addShaped(<floodlights:grow_light>,[
    [<ore:lensEnderEye>,<ore:lensEnderEye>,<ore:lensEnderEye>],
    [null,<floodlights:electric_incandescent_light_bulb>],
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ]);

    //ContentTweaker
    //Custom Fuels
    furnace.setFuel(<contenttweaker:uncompressed_charcoal>, 200);
    furnace.setFuel(<contenttweaker:uncompressed_lignite_coal>, 200);
    furnace.setFuel(<contenttweaker:uncompressed_coal_coke>, 400);

    furnace.setFuel(<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), 6400);

    recipes.addShapeless(<contenttweaker:uncompressed_charcoal>*8,[<minecraft:coal:1>]);
    recipes.addShapeless(<minecraft:coal:1>,[<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>,<contenttweaker:uncompressed_charcoal>]);
    recipes.addShapeless(<contenttweaker:uncompressed_lignite_coal>*6,[<ore:gemLignite>]);
    recipes.addShapeless(<gregtech:meta_item_1:8211>,[<contenttweaker:uncompressed_lignite_coal>,<contenttweaker:uncompressed_lignite_coal>,<contenttweaker:uncompressed_lignite_coal>,<contenttweaker:uncompressed_lignite_coal>,<contenttweaker:uncompressed_lignite_coal>,<contenttweaker:uncompressed_lignite_coal>]);

    recipes.addShapeless(<contenttweaker:uncompressed_coal_coke>*8,[<ore:gemCoke>]);
    recipes.addShapeless(<ore:gemCoke>.firstItem ,[<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>,<contenttweaker:uncompressed_coal_coke>]);
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}