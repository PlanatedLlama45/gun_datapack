execute if score @s guns.last_shot matches 0 if score @s guns.cooldown matches 0 run function guns:shoot

execute if score @s guns.last_shot matches 2 if score @s guns.cooldown >= desert_eagle guns.COOLDOWN_TIME run function guns:shoot
