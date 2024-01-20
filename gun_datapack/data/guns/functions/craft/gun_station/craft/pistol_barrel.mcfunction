execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 2b, tag: {Tags: ["steel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_barrel_craft_steel

tag @e[tag=pistol_barrel_craft_steel] add pistol_barrel_craft

execute at @e[tag=pistol_barrel_craft_steel] if entity @e[distance=..1, tag=!pistol_barrel_craft] run tag @e remove pistol_barrel_craft
execute at @e[tag=pistol_barrel_craft_steel] if entity @e[distance=..1, tag=!pistol_barrel_craft] run tag @e remove pistol_barrel_craft_steel

execute at @e[tag=pistol_barrel_craft_steel] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=pistol_barrel_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=pistol_barrel_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 1101, Tags: ["pistol_barrel"], display: {Name: '{"text": "Pistol Barrel", "italic": false}'}}}, PickupDelay: 40s}

kill @e[tag=pistol_barrel_craft_steel]
