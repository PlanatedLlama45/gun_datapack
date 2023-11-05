tag @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["steel"]}}}] add black_steel_craft_steel
execute as @e[tag=black_steel_craft_steel] store result score @s guns.itemNum run data get entity @s Item.Count
execute as @e[tag=black_steel_craft_steel] at @s run tag @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:black_dye"}}] add black_steel_craft_dye
execute as @e[tag=black_steel_craft_dye] store result score @s guns.itemNum run data get entity @s Item.Count

tag @e[tag=black_steel_craft_steel] add black_steel_craft
tag @e[tag=black_steel_craft_dye] add black_steel_craft

execute at @e[tag=black_steel_craft_dye] if entity @e[distance=..0.5, tag=!black_steel_craft] run tag @e remove black_steel_craft
execute at @e[tag=black_steel_craft_dye] if entity @e[distance=..0.5, tag=!black_steel_craft] run tag @e remove black_steel_craft_dye

execute as @e[tag=black_steel_craft_dye] at @e[tag=black_steel_craft_steel] if score @s guns.itemNum <= @e[tag=black_steel_craft_steel, limit=1] guns.itemNum if score @s guns.itemNum >= @e[tag=black_steel_craft_steel, limit=1] guns.itemNum run summon minecraft:armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, Tags: ["black_steel_craft", "black_steel_craft_stand"]}

execute at @e[tag=black_steel_craft_stand] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=black_steel_craft_stand] run playsound item.bone_meal.use ambient @a ~ ~ ~
execute at @e[tag=black_steel_craft_stand] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 1002, Tags: ["black_steel"], display: {Name: '{"text": "Black Steel", "italic": false}'}}}, PickupDelay: 40s}
execute as @e[tag=black_steel_craft_stand] at @s as @e[type=item, nbt={Item: {tag: {Tags: ["black_steel"]}}}, sort=nearest, limit=1] store result entity @s Item.Count byte 1 run data get entity @e[tag=black_steel_craft_steel, sort=nearest, limit=1] Item.Count

execute as @e[tag=black_steel_craft_stand] run kill @e[tag=black_steel_craft]
