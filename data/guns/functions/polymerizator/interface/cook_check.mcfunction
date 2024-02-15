function guns:polymerizator/interface/check_plant
execute unless block ~ ~ ~ barrel{Items: [{Slot: 14b, id: "minecraft:coal"}]} run tag @s remove canCook
execute unless block ~ ~-1 ~ #guns:heating run tag @s remove canCook
execute if score @s guns.polymerizator_water matches 0 run tag @s remove canCook

execute if entity @s[tag=!cooking, tag=canCook] run scoreboard players set @s guns.processing_timer 0
execute if entity @s[tag=canCook] run tag @s add cooking

execute if entity @s[tag=!canCook] run function guns:polymerizator/interface/cook_interrupt

tag @s remove canCook
