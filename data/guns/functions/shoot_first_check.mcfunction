execute if score @s guns.last_shot matches 0 if score @s guns.cooldown matches 0 run function guns:shoot

execute unless entity @s[tag=cooling_down] run function guns:shoot
