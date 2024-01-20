tp @s ~ ~ ~ ~ ~-1
scoreboard players add @s guns.recoil 1
execute if score @s guns.recoil < mosin guns.RECOIL at @s run function guns:mosin/recoil
