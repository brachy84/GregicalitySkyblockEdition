//Alloying
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>*18);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>*3);
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>*4);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:aluminium> * 3, <liquid:copper>]);


//Melting
mods.tconstruct.Melting.removeRecipe(<liquid:stone>*72, <minecraft:cobblestone>);
mods.tconstruct.Melting.removeRecipe(<liquid:stone>*72, <minecraft:stone>);

mods.tconstruct.Melting.removeRecipe(<liquid:glass>*1000, <minecraft:sand>);


//Casting
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.jei.JEI.hide(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.jei.JEI.hide(<tconstruct:cast_custom:4>);


//Tinkers
recipes.remove(<tconstruct:tooltables>);
recipes.addShaped(<tconstruct:tooltables>,[
[<minecraft:crafting_table>],
[<gregtech:meta_tool:5>]
]);

recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern>*2,[
[null,<gregtech:meta_item_2:32011>],
[<gregtech:meta_tool:5>]
]);

recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>,[
[<ore:plankWood>,null,<ore:plankWood>],
[<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
[<gregtech:meta_tool:5>,<ore:plankWood>,<gregtech:meta_tool:6>]
]);

recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>,[
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
[<tconstruct:materials>,<gregtech:meta_tool:6>,<tconstruct:materials>],
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
]);

recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped(<tconstruct:seared_tank>,[
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
[<tconstruct:materials>,null,<tconstruct:materials>],
[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
]);

mods.jei.JEI.removeAndHide(<tconstruct:stone_stick>);

mods.jei.JEI.removeAndHide(<tconstruct:throwball:1>);

//Patterns
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:1>);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:large_plate"}),[
[<tconstruct:pattern>,<gregtech:meta_tool:17>,null],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:pick_head"}),[
[<tconstruct:pattern>,null,<gregtech:meta_tool:17>],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_head"}),[
[<tconstruct:pattern>,null,null],
[<gregtech:meta_tool:17>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:large_sword_blade"}),[
[<tconstruct:pattern>,null,null],
[null,<gregtech:meta_tool:17>,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:kama_head"}),[
[<tconstruct:pattern>,null,null],
[null,null,<gregtech:meta_tool:17>],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:cross_guard"}),[
[<tconstruct:pattern>,null,null],
[null,null,null],
[<gregtech:meta_tool:17>,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_shaft"}),[
[<tconstruct:pattern>,null,null],
[null,null,null],
[null,<gregtech:meta_tool:17>,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:excavator_head"}),[
[<tconstruct:pattern>,null,null],
[null,null,null],
[null,null,<gregtech:meta_tool:17>]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"}),[
[<gregtech:meta_tool:17>,<tconstruct:pattern>,null],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:broad_axe_head"}),[
[null,<tconstruct:pattern>,<gregtech:meta_tool:17>],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sign_head"}),[
[null,<tconstruct:pattern>,null],
[<gregtech:meta_tool:17>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tough_binding"}),[
[null,<tconstruct:pattern>,null],
[null,<gregtech:meta_tool:17>,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:axe_head"}),[
[null,<tconstruct:pattern>,null],
[null,null,<gregtech:meta_tool:17>],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:scythe_head"}),[
[null,<tconstruct:pattern>,null],
[null,null,null],
[<gregtech:meta_tool:17>,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sharpening_kit"}),[
[null,<tconstruct:pattern>,null],
[null,null,null],
[null,<gregtech:meta_tool:17>,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:shard"}),[
[null,<tconstruct:pattern>,null],
[null,null,null],
[null,null,<gregtech:meta_tool:17>]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:binding"}),[
[<gregtech:meta_tool:17>,null,<tconstruct:pattern>],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tough_tool_rod"}),[
[null,<gregtech:meta_tool:17>,<tconstruct:pattern>],
[null,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:wide_guard"}),[
[null,null,<tconstruct:pattern>],
[<gregtech:meta_tool:17>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:hammer_head"}),[
[null,null,<tconstruct:pattern>],
[null,<gregtech:meta_tool:17>,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:shovel_head"}),[
[null,null,<tconstruct:pattern>],
[null,null,<gregtech:meta_tool:17>],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:pan_head"}),[
[null,null,<tconstruct:pattern>],
[null,null,null],
[<gregtech:meta_tool:17>,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:fletching"}),[
[null,null,<tconstruct:pattern>],
[null,null,null],
[null,<gregtech:meta_tool:17>,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sword_blade"}),[
[null,null,<tconstruct:pattern>],
[null,null,null],
[null,null,<gregtech:meta_tool:17>]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:knife_blade"}),[
[<gregtech:meta_tool:17>,null,null],
[<tconstruct:pattern>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:bow_string"}),[
[null,<gregtech:meta_tool:17>,null],
[<tconstruct:pattern>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:hand_guard"}),[
[null,null,<gregtech:meta_tool:17>],
[<tconstruct:pattern>,null,null],
[null,null,null]
]);

recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:bow_limb"}),[
[null,null,null],
[<tconstruct:pattern>,<gregtech:meta_tool:17>,null],
[null,null,null]
]);