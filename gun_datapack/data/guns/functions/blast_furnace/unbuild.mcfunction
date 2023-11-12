setblock ~ ~1 ~ air
setblock ~ ~ ~ cobblestone destroy
execute positioned ~ ~1 ~ run kill @e[tag=blast_furnace_bars_protection, distance=..0.5]
execute if entity @s[tag=!non_built] run kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:barrel", Count: 1b}}]

tag @s add non_built

kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:barrier", Count: 1b, tag: {Tags: ["blast_furnace_interface"]}}}]
