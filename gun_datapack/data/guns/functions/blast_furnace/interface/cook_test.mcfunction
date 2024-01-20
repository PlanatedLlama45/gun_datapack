execute if entity @s[tag=!smelting] if block ~ ~ ~ barrel{Items: [{Slot: 1b, id: "minecraft:coal"}, {Slot: 13b, id: "minecraft:iron_ingot"}, {Slot: 19b, id: "minecraft:coal"}]} run scoreboard players set @s guns.processing_timer 0
execute if entity @s[tag=smelting] unless block ~ ~ ~ barrel{Items: [{Slot: 1b, id: "minecraft:coal"}, {Slot: 13b, id: "minecraft:iron_ingot"}, {Slot: 19b, id: "minecraft:coal"}]} run function guns:blast_furnace/interface/cook_interrupt
execute if entity @s[scores={guns.processing_timer=0}] run tag @s add smelting
