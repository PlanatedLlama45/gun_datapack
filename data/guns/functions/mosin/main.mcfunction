function guns:mosin/aim
function guns:mosin/unaim
function guns:mosin/empty_aim

function guns:mosin/empty_ammo
function guns:mosin/ammo_fill_check

execute as @a[tag=reloading, scores={guns.reload_gun=4}] if score @s guns.reload >= mosin guns.RELOAD_TIME at @s run function guns:mosin/reload_end_second
execute as @a[scores={guns.last_shot=4,guns.ammo=1..,guns.cooldown=10}] at @s run playsound guns:mosin.bolt player @a ~ ~ ~ 12 1
