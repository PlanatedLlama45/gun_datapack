tp @s ~ ~ ~ ~ ~-1
scoreboard players add @s guns.recoil 1
execute if score @s guns.recoil < desert_eagle guns.RECOIL at @s run function guns:desert_eagle/recoil
