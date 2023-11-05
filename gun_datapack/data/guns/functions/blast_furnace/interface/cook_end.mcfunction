item modify block ~ ~ ~ container.1 guns:reduce_by_one
item modify block ~ ~ ~ container.13 guns:reduce_by_one
item modify block ~ ~ ~ container.19 guns:reduce_by_one

execute if block ~ ~ ~ barrel{Items: [{Slot: 16b, id: "minecraft:iron_ingot", tag: {Tags: ["steel"]}}]} run item modify block ~ ~ ~ container.16 guns:increase_by_one
execute unless block ~ ~ ~ barrel{Items: [{Slot: 16b, id: "minecraft:iron_ingot", tag: {Tags: ["steel"]}}]} run data modify block ~ ~ ~ Items append value {Slot: 16b, id: "minecraft:iron_ingot", Count: 1b, tag: {display: {Name: '{"text": "Steel", "italic": false}'}, CustomModelData: 1001, Tags: ["steel"]}}

data modify block ~ ~ ~ CustomName set value '{"text": "            Blast Furnace"}'

function guns:blast_furnace/interface/cook_interrupt
