execute as @e[type=item, nbt={Item: {id: "minecraft:bricks", Count: 1b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add blast_furnace_craft_brick
execute at @e[tag=blast_furnace_craft_brick] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 4b, tag: {Tags: ["black_steel"]}}}] run tag @s add blast_furnace_craft_black_steel
execute at @e[tag=blast_furnace_craft_black_steel] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:blast_furnace", Count: 1b}}] run tag @s add blast_furnace_craft_furnace
execute at @e[tag=blast_furnace_craft_furnace] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:redstone", Count: 1b}}] run tag @s add blast_furnace_craft_redstone
execute at @e[tag=blast_furnace_craft_redstone] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:compass", Count: 1b}}] run tag @s add blast_furnace_craft_compass

tag @e[tag=blast_furnace_craft_brick] add blast_furnace_craft
tag @e[tag=blast_furnace_craft_black_steel] add blast_furnace_craft
tag @e[tag=blast_furnace_craft_furnace] add blast_furnace_craft
tag @e[tag=blast_furnace_craft_redstone] add blast_furnace_craft
tag @e[tag=blast_furnace_craft_compass] add blast_furnace_craft

execute at @e[tag=blast_furnace_craft_compass] if entity @e[distance=..0.5, type=item, tag=!blast_furnace_craft] run tag @e remove blast_furnace_craft
execute at @e[tag=blast_furnace_craft_compass] if entity @e[distance=..0.5, type=item, tag=!blast_furnace_craft] run tag @e remove blast_furnace_craft_compass

execute at @e[tag=blast_furnace_craft_compass] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=blast_furnace_craft_compass] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=blast_furnace_craft_compass] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {Tags: ["blast_furnace", "non_built", "non_placed"], Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "armor_stand", Count: 1b, tag: {CustomModelData: 1001}}], DisabledSlots: 2096896}, CustomModelData: 1001, display: {Name: '{"text":"Blast Furnace Controller","italic":false}', Lore: ['{"text":"Used to build a blast furnace for smelting steel","italic":false,"color":"gray"}']}}}, PickupDelay: 40s}

execute as @e[tag=blast_furnace_craft_compass] run kill @e[tag=blast_furnace_craft]
