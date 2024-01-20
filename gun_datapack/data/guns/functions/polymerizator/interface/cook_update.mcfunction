scoreboard players operation @s guns.temp = @s guns.processing_timer
scoreboard players operation @s guns.temp %= fifty CONST
execute if score @s guns.temp matches 0 align xyz run playsound block.smoker.smoke block @a ~0.5 ~0.5 ~0.5

scoreboard players add @s guns.processing_timer 1
execute align xyz run particle smoke ~0.5 ~1.1 ~0.5 0.1 0.1 0.1 0.01 1 normal

scoreboard players operation @s guns.processing_progress = @s guns.processing_timer
scoreboard players operation @s guns.processing_progress *= one_hundred CONST
scoreboard players operation @s guns.processing_progress /= polymerizator guns.PROCESSING_TIME

item modify block ~ ~ ~ container.23 guns:processing_progress
