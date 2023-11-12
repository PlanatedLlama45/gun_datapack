execute at @s run playsound minecraft:ui.button.click player @a ~ ~ ~ 2 1.5
clear @s iron_nugget{Tags: ["ammo", "desert_eagle"], CustomModelData: 1102} 1
scoreboard players set @s guns.reload 0
scoreboard players set @s guns.reload_gun 2
tag @s add reloading