scoreboard players add @s guns.shoot_distance 1

particle minecraft:ash ~ ~ ~ 0 0 0 0.2 1 force

execute if entity @e[dx=0, dy=0, dz=0, tag=!shooter] run scoreboard players add @s guns.shoot_pierced 1
damage @e[dx=0, dy=0, dz=0, tag=!shooter, limit=1] 5 arrow by @s

execute if block ~ ~ ~ #guns:shoot_breakable if score @s guns.shoot_pierced < glock_23 guns.MAX_PIERCING run function guns:shoot_break_block
execute if block ~ ~ ~ #guns:shoot_through if score @s guns.shoot_distance < glock_23 guns.MAX_DISTANCE if score @s guns.shoot_pierced < glock_23 guns.MAX_PIERCING positioned ^ ^ ^0.5 run function guns:glock_23/shoot_loop

execute if score @s guns.shoot_distance >= glock_23 guns.MAX_DISTANCE run function guns:ricochet
execute if score @s guns.shoot_pierced >= glock_23 guns.MAX_PIERCING run function guns:ricochet
execute unless block ~ ~ ~ #guns:shoot_breakable run function guns:ricochet
execute unless block ~ ~ ~ #guns:shoot_through run function guns:ricochet
