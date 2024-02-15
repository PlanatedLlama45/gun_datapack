scoreboard players set @s guns.last_shot 4
playsound guns:mosin.fire player @a ~ ~ ~ 160

function guns:mosin/shoot_loop

scoreboard players set @s guns.recoil 0
execute unless score mosin guns.RECOIL matches 0 at @s run function guns:mosin/recoil
