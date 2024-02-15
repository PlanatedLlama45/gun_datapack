function guns:desert_eagle/aim
function guns:desert_eagle/unaim
function guns:desert_eagle/empty_aim

function guns:desert_eagle/empty_ammo
function guns:desert_eagle/ammo_fill_check

execute as @a[tag=reloading, scores={guns.reload_gun=2}] if score @s guns.reload >= desert_eagle guns.RELOAD_TIME at @s run function guns:desert_eagle/reload_end_second
