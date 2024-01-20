playsound guns:glock23.reload player @a ~ ~ ~ 8
clear @s iron_nugget{Tags: ["ammo", "glock_23"], CustomModelData: 1002} 1
scoreboard players set @s guns.reload 0
scoreboard players set @s guns.reload_gun 1
tag @s add reloading
