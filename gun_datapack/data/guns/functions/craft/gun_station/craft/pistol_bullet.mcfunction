execute as @e[type=item, nbt={Item: {id: "minecraft:copper_ingot", Count: 1b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_ingot
execute at @e[tag=pistol_bullet_craft_ingot] as @e[type=item, nbt={Item: {id: "minecraft:iron_nugget", Count: 1b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_nugget
execute at @e[tag=pistol_bullet_craft_nugget] as @e[type=item, nbt={Item: {id: "minecraft:gunpowder", Count: 1b}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_powder

tag @e[tag=pistol_bullet_craft_ingot] add pistol_bullet_craft
tag @e[tag=pistol_bullet_craft_nugget] add pistol_bullet_craft
tag @e[tag=pistol_bullet_craft_powder] add pistol_bullet_craft

execute at @e[tag=pistol_bullet_craft_powder] if entity @e[distance=..0.5, tag=!pistol_bullet_craft] run tag @e remove pistol_bullet_craft
execute at @e[tag=pistol_bullet_craft_powder] if entity @e[distance=..0.5, tag=!pistol_bullet_craft] run tag @e remove pistol_bullet_craft_powder

execute at @e[tag=pistol_bullet_craft_powder] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=pistol_bullet_craft_powder] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=pistol_bullet_craft_powder] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_nugget", Count: 10b, tag: {CustomModelData: 2001, display: {Name: '{"text": "Bullet", "italic": false}', Lore: ['{"text": "Type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapons:", "italic": false, "color": "gray"}', '{"text": " - Desert Eagle", "italic": false, "color": "gray"}']}, Tags: ["bullet","pistol"]}}, PickupDelay: 40s}

execute as @e[tag=pistol_bullet_craft_powder] run kill @e[tag=pistol_bullet_craft]
