scoreboard players set @s guns.last_shot 2
playsound guns:desert_eagle.fire player @a ~ ~ ~ 80 1

function guns:desert_eagle/shoot_loop

scoreboard players set @s guns.recoil 0
execute unless score desert_eagle guns.RECOIL matches 0 at @s run function guns:desert_eagle/recoil
