scoreboard players set @s guns.last_shot 1
playsound guns:glock23.fire player @a ~ ~ ~ 64 1

function guns:glock_23/shoot_loop

scoreboard players set @s guns.recoil 0
execute unless score glock_23 guns.RECOIL matches 0 at @s run function guns:glock_23/recoil
