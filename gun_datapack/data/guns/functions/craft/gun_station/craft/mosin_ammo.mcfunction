execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["steel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add mosin_ammo_craft_steel
execute at @e[tag=mosin_ammo_craft_steel] as @e[type=item, nbt={Item: {id: "minecraft:iron_nugget", Count: 2b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add mosin_ammo_craft_nugget

tag @e[tag=mosin_ammo_craft_steel] add mosin_ammo_craft
tag @e[tag=mosin_ammo_craft_nugget] add mosin_ammo_craft

execute at @e[tag=mosin_ammo_craft_nugget] if entity @e[distance=..0.5, tag=!mosin_ammo_craft] run tag @e remove mosin_ammo_craft
execute at @e[tag=mosin_ammo_craft_nugget] if entity @e[distance=..0.5, tag=!mosin_ammo_craft] run tag @e remove mosin_ammo_craft_nugget

execute at @e[tag=mosin_ammo_craft_nugget] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=mosin_ammo_craft_nugget] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=mosin_ammo_craft_nugget] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1301, display: {Name: '{"text": "Clip (empty)", "italic": false}', Lore: ['{"text": "Bullet type: Rifle", "italic": false, "color": "gray"}', '{"text": "Weapon: Mosin Nagant", "italic": false, "color": "gray"}', '{"text": "Capacity: 5rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","mosin"]}}, PickupDelay: 40s}

execute as @e[tag=mosin_ammo_craft_nugget] run kill @e[tag=mosin_ammo_craft]
