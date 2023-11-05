clear @s iron_nugget{Tags: ["bullet", "pistol"], CustomModelData: 2001} 1
scoreboard players add @s guns.itemNum 1
execute if score @s guns.itemNum < desert_eagle guns.MAX_AMMO run function guns:desert_eagle/ammo_fill_loop
