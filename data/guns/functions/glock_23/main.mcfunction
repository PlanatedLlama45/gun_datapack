function guns:glock_23/aim
function guns:glock_23/unaim
function guns:glock_23/empty_aim

function guns:glock_23/empty_ammo
function guns:glock_23/ammo_fill_check

execute as @a[tag=reloading, scores={guns.reload_gun=1}] if score @s guns.reload >= glock_23 guns.RELOAD_TIME at @s run function guns:glock_23/reload_end_second
