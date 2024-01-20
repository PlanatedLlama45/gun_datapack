item modify block ~ ~ ~ container.3 guns:reduce_by_one
item modify block ~ ~ ~ container.14 guns:reduce_by_one
scoreboard players remove @s guns.polymerizator_water 250

execute if block ~ ~ ~ barrel{Items: [{Slot: 16b, id: "minecraft:paper", tag: {Tags: ["plastic"]}}]} run item modify block ~ ~ ~ container.16 guns:increase_by_one
execute unless block ~ ~ ~ barrel{Items: [{Slot: 16b, id: "minecraft:paper", tag: {Tags: ["plastic"]}}]} run data modify block ~ ~ ~ Items append value {Slot: 16b, id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text": "Plastic", "italic": false}'}, CustomModelData: 1001, Tags: ["plastic"]}}

execute align xyz run playsound item.bucket.fill block @a ~0.5 ~0.5 ~0.5

function guns:polymerizator/interface/cook_interrupt
