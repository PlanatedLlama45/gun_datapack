scoreboard players set @s guns.last_shot 3
playsound guns:l96a1.fire player @a ~ ~ ~ 192

function guns:l96a1/shoot_loop

scoreboard players set @s guns.recoil 0
execute unless score l96a1 guns.RECOIL matches 0 at @s run function guns:l96a1/recoil
