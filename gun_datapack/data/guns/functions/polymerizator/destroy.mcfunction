summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {Tags: ["polymerizator", "non_placed"], Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "armor_stand", Count: 1b, tag: {CustomModelData: 1101}}], DisabledSlots: 2096896}, CustomModelData: 1101, display: {Name: '{"text":"Polymerizator","italic":false}', Lore: ['{"text":"Used to make plastic","italic":false,"color":"gray"}']}}}, PickupDelay: 20s}
execute if entity @s[tag=non_built] run kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:cobblestone", Count: 1b}}]
execute if entity @s[tag=!non_built] run kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:barrel", Count: 1b}}]
execute align xyz run particle block cyan_terracotta ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 64 normal
function guns:blast_furnace/unbuild
setblock ~ ~ ~ air

kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:barrier", Count: 1b, tag: {Tags: ["polymerizator_interface"]}}}]
kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:barrier", Count: 1b, tag: {Tags: ["polymerizator_progress"]}}}]

kill @s
