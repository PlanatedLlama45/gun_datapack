tp @s ~ ~ ~ ~ ~-1
scoreboard players add @s guns.recoil 1
execute if score @s guns.recoil < glock_23 guns.RECOIL at @s run function guns:glock_23/recoil
