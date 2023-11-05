execute if entity @s[tag=smelting] run function guns:blast_furnace/smoke
function guns:blast_furnace/interface/cook_test

execute if entity @s[tag=smelting] if score @s guns.blast_furnace_timer < blast_furnace guns.SMELTING_TIME run function guns:blast_furnace/interface/cook_update
execute if entity @s[tag=smelting] if score @s guns.blast_furnace_timer >= blast_furnace guns.SMELTING_TIME run function guns:blast_furnace/interface/cook_end

execute unless block ~ ~ ~ barrel{Items: [{Slot: 0b, tag: {Tags: ["blast_furnace_interface"]}}]} run data modify block ~ ~ ~ Items append value {Slot: 0b, id: "minecraft:barrier", Count: 1b, tag: {CustomModelData: 1002, Tags: ["blast_furnace_interface"], display: {Name: '{"text":""}'}}}
