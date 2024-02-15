function guns:l96a1/aim
function guns:l96a1/unaim
function guns:l96a1/empty_aim

function guns:l96a1/empty_ammo
function guns:l96a1/ammo_fill_check

execute as @a[tag=reloading, scores={guns.reload_gun=3}] if score @s guns.reload >= l96a1 guns.RELOAD_TIME at @s run function guns:l96a1/reload_end_second
execute as @a[scores={guns.last_shot=3,guns.ammo=1..,guns.cooldown=20}] at @s run playsound guns:l96a1.bolt player @a ~ ~ ~ 12