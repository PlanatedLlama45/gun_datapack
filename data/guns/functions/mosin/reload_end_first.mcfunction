playsound guns:mosin.reload player @a ~ ~ ~ 8
clear @s iron_nugget{Tags: ["ammo", "mosin"], CustomModelData: 1302} 1
scoreboard players set @s guns.reload 0
scoreboard players set @s guns.reload_gun 4
tag @s add reloading