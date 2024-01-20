execute as @e[type=item, nbt={Item: {id: "minecraft:paper", Count: 1b, tag: {Tags: ["plastic"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add glock_ammo_craft_plastic
execute at @e[tag=glock_ammo_craft_plastic] as @e[type=item, nbt={Item: {id: "minecraft:iron_nugget", Count: 2b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add glock_ammo_craft_nugget

tag @e[tag=glock_ammo_craft_plastic] add glock_ammo_craft
tag @e[tag=glock_ammo_craft_nugget] add glock_ammo_craft

execute at @e[tag=glock_ammo_craft_nugget] if entity @e[distance=..0.5, tag=!glock_ammo_craft] run tag @e remove glock_ammo_craft
execute at @e[tag=glock_ammo_craft_nugget] if entity @e[distance=..0.5, tag=!glock_ammo_craft] run tag @e remove glock_ammo_craft_nugget

execute at @e[tag=glock_ammo_craft_nugget] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=glock_ammo_craft_nugget] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=glock_ammo_craft_nugget] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1001, display: {Name: '{"text": "Magazine (empty)", "italic": false}', Lore: ['{"text": "Bullet type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapon: Glock 23", "italic": false, "color": "gray"}', '{"text": "Capacity: 17rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","glock_23"]}}, PickupDelay: 40s}

execute as @e[tag=glock_ammo_craft_nugget] run kill @e[tag=glock_ammo_craft]
