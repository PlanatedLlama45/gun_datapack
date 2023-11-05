scoreboard players add @s guns.shoot_distance 1

particle minecraft:ash ~ ~ ~ 0 0 0 0.2 1 force

damage @e[dx=0, dy=0, dz=0, tag=!shooter, limit=1] 8 arrow by @s
execute if entity @e[dx=0, dy=0, dz=0, tag=!shooter] run scoreboard players add @s guns.shoot_pierced 1

execute if block ~ ~ ~ #guns:shoot_through if score @s guns.shoot_distance < desert_eagle guns.MAX_DISTANCE if score @s guns.shoot_pierced <= desert_eagle guns.MAX_PIERCING positioned ^ ^ ^0.5 run function guns:desert_eagle/shoot_loop
