execute if entity @s[tag=smelting] run function guns:blast_furnace/smoke
function guns:blast_furnace/interface/cook_test

item replace block ~ ~ ~ container.22 with barrier{CustomModelData: 1001, Tags: ["blast_furnace_interface"], display: {Name: '{"text":""}'}}
execute if entity @s[tag=smelting] if score @s guns.processing_timer < blast_furnace guns.PROCESSING_TIME run function guns:blast_furnace/interface/cook_update
execute if entity @s[tag=smelting] if score @s guns.processing_timer >= blast_furnace guns.PROCESSING_TIME run function guns:blast_furnace/interface/cook_end
execute if entity @s[tag=!cooking] run data modify block ~ ~ ~ Items[{Slot: 23b}].tag.display.Name set value '{"text": ""}'

function guns:blast_furnace/interface/fill
