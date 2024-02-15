clear @s iron_nugget{Tags: ["bullet", "rifle"], CustomModelData: 2002} 1
scoreboard players add @s guns.item_num 1
execute if score @s guns.item_num < l96a1 guns.MAX_AMMO run function guns:l96a1/ammo_fill_loop
