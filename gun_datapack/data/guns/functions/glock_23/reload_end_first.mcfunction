execute at @s run playsound minecraft:ui.button.click player @a ~ ~ ~ 2 1.5
clear @s iron_nugget{Tags: ["ammo", "glock_23"], CustomModelData: 1002} 1
scoreboard players set @s guns.reload 0
scoreboard players set @s guns.reload_gun 1
tag @s add reloading
