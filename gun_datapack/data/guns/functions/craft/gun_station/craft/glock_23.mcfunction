execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["pistol_barrel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add glock_craft_barrel
execute at @e[tag=glock_craft_barrel] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["black_steel"]}}}] run tag @s add glock_craft_steel
execute at @e[tag=glock_craft_steel] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:paper", Count: 3b, tag: {Tags: ["plastic"]}}}] run tag @s add glock_craft_plastic
execute at @e[tag=glock_craft_plastic] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:stone_button", Count: 1b}}] run tag @s add glock_craft_buttton
execute at @e[tag=glock_craft_buttton] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:tripwire_hook", Count: 1b}}] run tag @s add glock_craft_hook

tag @e[tag=glock_craft_barrel] add glock_craft
tag @e[tag=glock_craft_steel] add glock_craft
tag @e[tag=glock_craft_plastic] add glock_craft
tag @e[tag=glock_craft_buttton] add glock_craft
tag @e[tag=glock_craft_hook] add glock_craft

execute at @e[tag=glock_craft_hook] if entity @e[distance=..0.5, tag=!glock_craft] run tag @e remove glock_craft
execute at @e[tag=glock_craft_hook] if entity @e[distance=..0.5, tag=!glock_craft] run tag @e remove glock_craft_hook

execute at @e[tag=glock_craft_hook] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=glock_craft_hook] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=glock_craft_hook] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 1004, ammo: -1, display: {Name: '{"text":"Glock 23","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 150 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","glock_23"], AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}}, PickupDelay: 40s}

execute as @e[tag=glock_craft_hook] run kill @e[tag=glock_craft]
