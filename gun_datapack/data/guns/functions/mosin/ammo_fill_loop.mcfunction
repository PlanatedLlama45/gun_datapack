clear @s iron_nugget{Tags: ["bullet", "rifle"], CustomModelData: 2002} 1
scoreboard players add @s guns.item_num 1
execute if score @s guns.item_num < mosin guns.MAX_AMMO run function guns:mosin/ammo_fill_loop
