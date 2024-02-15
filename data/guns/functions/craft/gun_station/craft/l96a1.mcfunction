execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["rifle_barrel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add l96a1_craft_barrel
execute at @e[tag=l96a1_craft_barrel] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["black_steel"]}}}] run tag @s add l96a1_craft_steel
execute at @e[tag=l96a1_craft_steel] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:paper", Count: 5b, tag: {Tags: ["plastic"]}}}] run tag @s add l96a1_craft_plastic
execute at @e[tag=l96a1_craft_plastic] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:stone_button", Count: 1b}}] run tag @s add l96a1_craft_buttton
execute at @e[tag=l96a1_craft_buttton] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_nugget", Count: 3b}}] run tag @s add l96a1_craft_nugget
execute at @e[tag=l96a1_craft_nugget] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:tripwire_hook", Count: 1b}}] run tag @s add l96a1_craft_hook
execute at @e[tag=l96a1_craft_hook] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:tinted_glass", Count: 1b}}] run tag @s add l96a1_craft_glass
execute at @e[tag=l96a1_craft_glass] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:green_dye", Count: 2b}}] run tag @s add l96a1_craft_dye

tag @e[tag=l96a1_craft_barrel] add l96a1_craft
tag @e[tag=l96a1_craft_steel] add l96a1_craft
tag @e[tag=l96a1_craft_plastic] add l96a1_craft
tag @e[tag=l96a1_craft_buttton] add l96a1_craft
tag @e[tag=l96a1_craft_nugget] add l96a1_craft
tag @e[tag=l96a1_craft_hook] add l96a1_craft
tag @e[tag=l96a1_craft_glass] add l96a1_craft
tag @e[tag=l96a1_craft_dye] add l96a1_craft

execute at @e[tag=l96a1_craft_dye] if entity @e[distance=..0.5, type=item, tag=!l96a1_craft] run tag @e remove l96a1_craft
execute at @e[tag=l96a1_craft_dye] if entity @e[distance=..0.5, type=item, tag=!l96a1_craft] run tag @e remove l96a1_craft_dye

execute at @e[tag=l96a1_craft_dye] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=l96a1_craft_dye] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=l96a1_craft_dye] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 1204, display: {Name: '{"text":"L96A1","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 14","italic":false,"color":"gray"}', '{"text":"Distance: 180m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","l96a1"], HideFlags:2, ammo: -1, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.25,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:7,Slot:mainhand,Operation:0,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.9,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}]}}, PickupDelay: 40s}

execute as @e[tag=l96a1_craft_dye] run kill @e[tag=l96a1_craft]
