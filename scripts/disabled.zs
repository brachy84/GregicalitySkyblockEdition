#priority 2601
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static disabledItems as IIngredient[][string] = {
    minecraft : [
        <minecraft:wooden_sword>,
        <minecraft:wooden_shovel>,
        <minecraft:wooden_pickaxe>,
        <minecraft:wooden_axe>,
        <minecraft:wooden_hoe>,
        <minecraft:stone_pickaxe>,
        <minecraft:stone_sword>,
        <minecraft:stone_axe>,
        <minecraft:stone_hoe>,
        <minecraft:stone_shovel>,
        <minecraft:iron_pickaxe>,
        <minecraft:iron_sword>,
        <minecraft:iron_axe>,
        <minecraft:iron_hoe>,
        <minecraft:iron_shovel>,
        <minecraft:golden_pickaxe>,
        <minecraft:golden_sword>,
        <minecraft:golden_axe>,
        <minecraft:golden_hoe>,
        <minecraft:golden_shovel>,
        <minecraft:diamond_pickaxe>,
        <minecraft:diamond_sword>,
        <minecraft:diamond_axe>,
        <minecraft:diamond_hoe>,
        <minecraft:diamond_shovel>
    ],
    ae2 : [
        <appliedenergistics2:inscriber>,
        <appliedenergistics2:grindstone>,
        <appliedenergistics2:crank>,
        <appliedenergistics2:vibration_chamber>,
        <appliedenergistics2:material:40>,
        <appliedenergistics2:certus_quartz_axe>,
        <appliedenergistics2:certus_quartz_hoe>,
        <appliedenergistics2:certus_quartz_spade>,
        <appliedenergistics2:certus_quartz_pickaxe>,
        <appliedenergistics2:certus_quartz_sword>,
        <appliedenergistics2:nether_quartz_axe>,
        <appliedenergistics2:nether_quartz_hoe>,
        <appliedenergistics2:nether_quartz_spade>,
        <appliedenergistics2:nether_quartz_pickaxe>,
        <appliedenergistics2:nether_quartz_sword>,
        //Extra Cells Fluid Storage
        <extracells:storage.fluid:0>,
        <extracells:storage.fluid:1>,
        <extracells:storage.fluid:2>,
        <extracells:storage.fluid:3>,
        <extracells:storage.component:4>,
        <extracells:storage.component:5>,
        <extracells:storage.component:6>,
        <extracells:storage.component:7>,
        <extracells:part.base:0>,
        <extracells:part.base:1>,
        <extracells:part.base:2>,
        <extracells:part.base:3>,
        <extracells:part.base:4>,
        <extracells:part.base:5>,
        <extracells:part.base:6>,
        <extracells:part.base:9>,
    ],
    misc : [
        <exnihilocreatio:block_crucible>,
        <ceramics:unfired_clay:6>,
        <ceramics:unfired_clay:7>,
        <betterbuilderswands:wandstone>,
        <betterbuilderswands:wandunbreakable>,
        <gregtech:sapling>,
        <gregtech:log>,
        <gregtech:leaves>,
        <theoneprobe:probe>,
        <theoneprobe:iron_helmet_probe>,
        <theoneprobe:gold_helmet_probe>,
        <theoneprobe:diamond_helmet_probe>,
        <floodlights:carbon_dissolver>,
        <floodlights:carbon_lantern>,
        <floodlights:carbon_floodlight>,
        <microblockcbe:stone_rod>
    ]
};

static disabledJeiCategories as string[] = [
    
];

function init() {
    for mod, items in disabledItems {
        utils.removeAndHide(items);
    }
    
    mods.jei.JEI.removeAndHide(<rftools:syringe:*>);
    mods.jei.JEI.removeAndHide(<rftools:shape_card:*>);
    mods.jei.JEI.removeAndHide(<rftools:charged_porter:*>);
    mods.jei.JEI.removeAndHide(<rftools:advanced_charged_porter:*>);
    mods.jei.JEI.removeAndHide(<rftools:matter_transmitter:*>);
    mods.jei.JEI.removeAndHide(<rftools:matter_receiver:*>);
    mods.jei.JEI.removeAndHide(<rftools:analog_block>);
    mods.jei.JEI.removeAndHide(<rftools:booster>);
    mods.jei.JEI.removeAndHide(<rftools:builder>);
    mods.jei.JEI.removeAndHide(<rftools:camo_shield_block>);
    mods.jei.JEI.removeAndHide(<rftools:camo_shield_block_opaque>);
    mods.jei.JEI.removeAndHide(<rftools:composer>);
    mods.jei.JEI.removeAndHide(<rftools:counter_block>);
    mods.jei.JEI.removeAndHide(<rftools:creative_screen>);
    mods.jei.JEI.removeAndHide(<rftools:destination_analyzer>);
    mods.jei.JEI.removeAndHide(<rftools:dialing_device>);
    mods.jei.JEI.removeAndHide(<rftools:digit_block>);
    mods.jei.JEI.removeAndHide(<rftools:dimensional_shard_ore>);
    mods.jei.JEI.removeAndHide(<rftools:elevator>);
    mods.jei.JEI.removeAndHide(<rftools:ender_monitor>);
    mods.jei.JEI.removeAndHide(<rftools:endergenic>);
    mods.jei.JEI.removeAndHide(<rftools:environmental_controller>);
    mods.jei.JEI.removeAndHide(<rftools:invchecker_block>);
    mods.jei.JEI.removeAndHide(<rftools:invisible_shield_block>);
    mods.jei.JEI.removeAndHide(<rftools:invisible_shield_block_opaque>);
    mods.jei.JEI.removeAndHide(<rftools:item_filter>);
    mods.jei.JEI.removeAndHide(<rftools:level_emitter>);
    mods.jei.JEI.removeAndHide(<rftools:liquid_monitor>);
    mods.jei.JEI.removeAndHide(<rftools:locator>);
    mods.jei.JEI.removeAndHide(<rftools:logic_block>);
    mods.jei.JEI.removeAndHide(<rftools:machine_base>);
    mods.jei.JEI.removeAndHide(<rftools:machine_infuser>);
    mods.jei.JEI.removeAndHide(<rftools:matter_beamer>);
    mods.jei.JEI.removeAndHide(<rftools:matter_booster>);
    mods.jei.JEI.removeAndHide(<rftools:notick_camo_shield_block>);
    mods.jei.JEI.removeAndHide(<rftools:notick_camo_shield_block_opaque>);
    mods.jei.JEI.removeAndHide(<rftools:notick_invisible_shield_block>);
    mods.jei.JEI.removeAndHide(<rftools:notick_invisible_shield_block_opaque>);
    mods.jei.JEI.removeAndHide(<rftools:notick_solid_shield_block>);
    mods.jei.JEI.removeAndHide(<rftools:notick_solid_shield_block_opaque>);
    mods.jei.JEI.removeAndHide(<rftools:pearl_injector>);
    mods.jei.JEI.removeAndHide(<rftools:powercell>);
    mods.jei.JEI.removeAndHide(<rftools:powercell_advanced>);
    mods.jei.JEI.removeAndHide(<rftools:powercell_creative>);
    mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);
    mods.jei.JEI.removeAndHide(<rftools:projector>);
    mods.jei.JEI.removeAndHide(<rftools:redstone_receiver_block>);
    mods.jei.JEI.removeAndHide(<rftools:redstone_transmitter_block>);
    mods.jei.JEI.removeAndHide(<rftools:relay>);
    mods.jei.JEI.removeAndHide(<rftools:remote_scanner>);
    mods.jei.JEI.removeAndHide(<rftools:rf_monitor>);
    mods.jei.JEI.removeAndHide(<rftools:scanner>);
    mods.jei.JEI.removeAndHide(<rftools:screen>);
    mods.jei.JEI.removeAndHide(<rftools:screen_controller>);
    //mods.jei.JEI.removeAndHide(<rftools:screen_hitblock>);
    mods.jei.JEI.removeAndHide(<rftools:sensor_block>);
    mods.jei.JEI.removeAndHide(<rftools:sequencer_block>);
    mods.jei.JEI.removeAndHide(<rftools:shield_block1>);
    mods.jei.JEI.removeAndHide(<rftools:shield_block2>);
    mods.jei.JEI.removeAndHide(<rftools:shield_block3>);
    mods.jei.JEI.removeAndHide(<rftools:shield_block4>);
    mods.jei.JEI.removeAndHide(<rftools:shield_template_block>);
    mods.jei.JEI.removeAndHide(<rftools:simple_dialer>);
    mods.jei.JEI.removeAndHide(<rftools:space_chamber>);
    mods.jei.JEI.removeAndHide(<rftools:space_chamber_controller>);
    mods.jei.JEI.removeAndHide(<rftools:spawner>);
    mods.jei.JEI.removeAndHide(<rftools:support_block>);
    mods.jei.JEI.removeAndHide(<rftools:timer_block>);
    mods.jei.JEI.removeAndHide(<rftools:wire_block>);
}

/*
--- JEI Categories ---
minecraft.crafting
minecraft.fuel
minecraft.smelting
minecraft.brewing
minecraft.anvil
beebetteratbees.beetree
forestry.farming
excompressum:woodenCrucible
excompressum:chickenStick
tconstruct.smeltery
tconstruct.alloy
tconstruct.casting_table
tconstruct.dryingrack
binnie.extratrees.fruitpress
binnie.extratrees.brewing
binnie.extratrees.distilling
ftbquests.quests
chisel.chiseling
bonsaitrees.Growing
threng.agg
threng.purify
threng.etch
threng.energize
tinkersjei:tool_stats
appliedenergistics2.grinder
appliedenergistics2.condenser
appliedenergistics2.inscriber
binnie.genetics.incubator
binnie.genetics.isolator
binnie.genetics.polymeriser
binnie.genetics.sequencer
binnie.genetics.inoculator
binnie.genetics.genepool
binnie.genetics.database
exnihilocreatio:sieve
exnihilocreatio:hammer
exnihilocreatio:crook
exnihilocreatio:fluid_on_top
exnihilocreatio:fluid_transform
exnihilocreatio:fluid_block_transform
exnihilocreatio:compost
exnihilocreatio:crucible_stone
exnihilocreatio:heat_sources
bdew.jeibees.mutation.rootBees
bdew.jeibees.produce.rootBees
bdew.jeibees.mutation.rootTrees
bdew.jeibees.produce.rootTrees
bdew.jeibees.mutation.rootButterflies
bdew.jeibees.mutation.rootFlowers
forestry.carpenter
forestry.moistener
forestry.rainmaker
gregtech:circuit.integrated
gregtech:multiblock_info
gregtech:compressor
gregtech:extractor
gregtech:macerator
gregtech:orewasher
gregtech:thermal_centrifuge
gregtech:assembler
gregtech:forming_press
gregtech:fluid_canner
gregtech:plasma_arc_furnace
gregtech:arc_furnace
gregtech:sifter
gregtech:laser_engraver
gregtech:mixer
gregtech:autoclave
gregtech:electromagnetic_separator
gregtech:polarizer
gregtech:chemical_bath
gregtech:brewer
gregtech:fluid_heater
gregtech:distillery
gregtech:fermenter
gregtech:fluid_solidifier
gregtech:fluid_extractor
gregtech:fusion_reactor
gregtech:centrifuge
gregtech:electrolyzer
gregtech:blast_furnace
gregtech:implosion_compressor
gregtech:vacuum_freezer
gregtech:chemical_reactor
gregtech:distillation_tower
gregtech:cracker
gregtech:pyro
gregtech:wiremill
gregtech:metal_bender
gregtech:alloy_smelter
gregtech:canner
gregtech:lathe
gregtech:cutting_saw
gregtech:extruder
gregtech:forge_hammer
gregtech:packer
gregtech:unpacker
gregtech:cluster_mill
gregtech:assembly_line
gregtech:mass_fab
gregtech:replicator
gregtech:circuit_assembler
gregtech:electric_sieve
gregtech:attractor
gregtech:large_chemical_reactor
gregtech:chemical_dehydrator
gregtech:chemical_plant
gregtech:large_mixer
gregtech:blast_alloy
gregtech:large_forge_hammer
gregtech:simple_ore_washer
gregtech:nuclear_reactor
gregtech:decay_chamber
gregtech:nuclear_breeder
gregtech:green_house
gregtech:large_centrifuge
gregtech:diesel_generator
gregtech:gas_turbine
gregtech:steam_turbine
gregtech:semi_fluid_generator
gregtech:plasma_generator
gregtech:naquadah_reactor
gregtech:rocket_fuel
gregtech:primitive_blast_furnace
gregtech:coke_oven
gregtech:ore_by_product
gtadditions:hot_coolant_turbine
forestry.charcoal.pile
jei.information
extrautils2.blockPatterns
extrautils2.resonator

*/