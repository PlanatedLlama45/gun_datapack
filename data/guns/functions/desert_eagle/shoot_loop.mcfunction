scoreboard players add @s guns.shoot_distance 1

particle minecraft:ash ~ ~ ~ 0 0 0 0.2 1 force

execute if entity @e[dx=0, dy=0, dz=0, tag=!shooter] run scoreboard players add @s guns.shoot_pierced 1
damage @e[dx=0, dy=0, dz=0, tag=!shooter, limit=1] 10 arrow by @s

execute if block ~ ~ ~ #guns:shoot_breakable if score @s guns.shoot_pierced < desert_eagle guns.MAX_PIERCING run function guns:shoot_break_block
execute if block ~ ~ ~ #guns:shoot_through if score @s guns.shoot_distance < desert_eagle guns.MAX_DISTANCE if score @s guns.shoot_pierced < desert_eagle guns.MAX_PIERCING positioned ^ ^ ^0.5 run function guns:desert_eagle/shoot_loop

execute unless entity @s[tag=played_ricochet] if score @s guns.shoot_distance >= desert_eagle guns.MAX_DISTANCE run function guns:ricochet
execute unless entity @s[tag=played_ricochet] if score @s guns.shoot_pierced >= desert_eagle guns.MAX_PIERCING run function guns:ricochet
