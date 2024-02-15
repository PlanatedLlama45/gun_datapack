execute as @e[type=item, nbt={Item: {id: "minecraft:copper_ingot", Count: 1b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add polymerizator_craft_copper
execute at @e[tag=polymerizator_craft_copper] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 2b, tag: {Tags: ["black_steel"]}}}] run tag @s add polymerizator_craft_black_steel
execute at @e[tag=polymerizator_craft_black_steel] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:glass", Count: 1b}}] run tag @s add polymerizator_craft_glass
execute at @e[tag=polymerizator_craft_glass] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:comparator", Count: 1b}}] run tag @s add polymerizator_craft_comparator
execute at @e[tag=polymerizator_craft_comparator] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 4b, tag: {Tags: ["steel"]}}}] run tag @s add polymerizator_craft_steel

tag @e[tag=polymerizator_craft_copper] add polymerizator_craft
tag @e[tag=polymerizator_craft_black_steel] add polymerizator_craft
tag @e[tag=polymerizator_craft_glass] add polymerizator_craft
tag @e[tag=polymerizator_craft_comparator] add polymerizator_craft
tag @e[tag=polymerizator_craft_steel] add polymerizator_craft

execute at @e[tag=polymerizator_craft_steel] if entity @e[distance=..0.5, type=item, tag=!polymerizator_craft] run tag @e remove polymerizator_craft
execute at @e[tag=polymerizator_craft_steel] if entity @e[distance=..0.5, type=item, tag=!polymerizator_craft] run tag @e remove polymerizator_craft_steel

execute at @e[tag=polymerizator_craft_steel] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=polymerizator_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=polymerizator_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:armor_stand", Count: 1b, tag: {EntityTag: {Tags: ["polymerizator", "non_placed"], Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "armor_stand", Count: 1b, tag: {CustomModelData: 1101}}], DisabledSlots: 2096896}, CustomModelData: 1101, display: {Name: '{"text":"Polymerizator","italic":false}', Lore: ['{"text":"Used to make plastic","italic":false,"color":"gray"}']}}}, PickupDelay: 40s}

execute as @e[tag=polymerizator_craft_steel] run kill @e[tag=polymerizator_craft]
