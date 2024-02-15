execute as @e[type=item, nbt={Item: {id: "minecraft:copper_ingot"}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_ingot
execute as @e[tag=pistol_bullet_craft_ingot] store result score @s guns.item_num run data get entity @s Item.Count
execute at @e[tag=pistol_bullet_craft_ingot] as @e[type=item, nbt={Item: {id: "minecraft:iron_nugget"}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_nugget
execute as @e[tag=pistol_bullet_craft_nugget] store result score @s guns.item_num run data get entity @s Item.Count
execute at @e[tag=pistol_bullet_craft_nugget] as @e[type=item, nbt={Item: {id: "minecraft:gunpowder"}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_bullet_craft_powder
execute as @e[tag=pistol_bullet_craft_powder] store result score @s guns.item_num run data get entity @s Item.Count

tag @e[tag=pistol_bullet_craft_ingot] add pistol_bullet_craft
tag @e[tag=pistol_bullet_craft_nugget] add pistol_bullet_craft
tag @e[tag=pistol_bullet_craft_powder] add pistol_bullet_craft

execute at @e[tag=pistol_bullet_craft_powder] if entity @e[distance=..0.5, type=item, tag=!pistol_bullet_craft] run tag @e remove pistol_bullet_craft
execute at @e[tag=pistol_bullet_craft_powder] if entity @e[distance=..0.5, type=item, tag=!pistol_bullet_craft] run tag @e remove pistol_bullet_craft_powder

execute as @e[tag=pistol_bullet_craft_powder] at @s align xyz if score @s guns.item_num <= @e[tag=pistol_bullet_craft_nugget, sort=nearest, limit=1] guns.item_num if score @s guns.item_num >= @e[tag=pistol_bullet_craft_nugget, sort=nearest, limit=1] guns.item_num run summon minecraft:armor_stand ~0.5 ~1 ~0.5 {Invisible: 1b, Invulnerable: 1b, Tags: ["pistol_bullet_craft", "pistol_bullet_craft_stand"]}
execute as @e[tag=pistol_bullet_craft_powder] at @s if score @s guns.item_num < @e[tag=pistol_bullet_craft_ingot, sort=nearest, limit=1] guns.item_num run kill @e[tag=pistol_bullet_craft_stand]
execute as @e[tag=pistol_bullet_craft_powder] at @s if score @s guns.item_num > @e[tag=pistol_bullet_craft_ingot, sort=nearest, limit=1] guns.item_num run kill @e[tag=pistol_bullet_craft_stand]
execute as @e[tag=pistol_bullet_craft_powder] if score @s guns.item_num > six CONST run kill @e[tag=pistol_bullet_craft_stand]

execute at @e[tag=pistol_bullet_craft_stand] at @e[type=armor_stand, tag=gun_station, sort=nearest, limit=1] run particle minecraft:cloud ~0.5 ~1 ~0.5 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=pistol_bullet_craft_stand] at @e[type=armor_stand, tag=gun_station, sort=nearest, limit=1] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=pistol_bullet_craft_stand] at @e[type=armor_stand, tag=gun_station, sort=nearest, limit=1] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 2001, display: {Name: '{"text": "Bullet", "italic": false}', Lore: ['{"text": "Type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapons:", "italic": false, "color": "gray"}', '{"text": " - Glock 23", "italic": false, "color": "gray"}', '{"text": " - Desert Eagle", "italic": false, "color": "gray"}']}, Tags: ["bullet","pistol"]}}, PickupDelay: 40s}
execute as @e[tag=pistol_bullet_craft_stand] at @s as @e[type=item, nbt={Item: {tag: {Tags: ["bullet", "pistol"]}}}, sort=nearest, limit=1] store result entity @s Item.Count byte 10 run data get entity @e[tag=pistol_bullet_craft_powder, sort=nearest, limit=1] Item.Count

execute as @e[tag=pistol_bullet_craft_stand] run kill @e[tag=pistol_bullet_craft]
