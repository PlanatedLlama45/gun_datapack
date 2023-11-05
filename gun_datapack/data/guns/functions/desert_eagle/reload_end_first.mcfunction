execute at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 2 1.5
clear @s iron_nugget{Tags: ["ammo", "desert_eagle"], CustomModelData: 1102} 1
scoreboard players set @s guns.reload 0
tag @s add reloading