scoreboard players operation @s guns.temp = @s guns.processing_timer
scoreboard players operation @s guns.temp %= fifty CONST
execute if score @s guns.temp matches 0 align xyz run playsound block.blastfurnace.fire_crackle block @a ~0.5 ~0.5 ~0.5

scoreboard players add @s guns.processing_timer 1

scoreboard players operation @s guns.processing_progress = @s guns.processing_timer
scoreboard players operation @s guns.processing_progress *= one_hundred CONST
scoreboard players operation @s guns.processing_progress /= blast_furnace guns.PROCESSING_TIME

item modify block ~ ~ ~ container.22 guns:processing_progress
