clear @s iron_nugget{Tags: ["bullet", "pistol"], CustomModelData: 2001} 1
scoreboard players add @s guns.item_num 1
execute if score @s guns.item_num < desert_eagle guns.MAX_AMMO run function guns:desert_eagle/ammo_fill_loop
