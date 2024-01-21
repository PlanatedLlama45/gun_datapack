execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["rifle_barrel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add mosin_craft_barrel
execute at @e[tag=mosin_craft_barrel] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 2b, tag: {Tags: ["black_steel"]}}}] run tag @s add mosin_craft_steel
execute at @e[tag=mosin_craft_steel] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:spruce_planks", Count: 3b}}] run tag @s add mosin_craft_wood
execute at @e[tag=mosin_craft_wood] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:stone_button", Count: 1b}}] run tag @s add mosin_craft_buttton
execute at @e[tag=mosin_craft_buttton] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_nugget", Count: 3b}}] run tag @s add mosin_craft_nugget
execute at @e[tag=mosin_craft_nugget] if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] as @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:tripwire_hook", Count: 1b}}] run tag @s add mosin_craft_hook

tag @e[tag=mosin_craft_barrel] add mosin_craft
tag @e[tag=mosin_craft_steel] add mosin_craft
tag @e[tag=mosin_craft_wood] add mosin_craft
tag @e[tag=mosin_craft_buttton] add mosin_craft
tag @e[tag=mosin_craft_nugget] add mosin_craft
tag @e[tag=mosin_craft_hook] add mosin_craft

execute at @e[tag=mosin_craft_hook] if entity @e[distance=..0.5, type=item, tag=!mosin_craft] run tag @e remove mosin_craft
execute at @e[tag=mosin_craft_hook] if entity @e[distance=..0.5, type=item, tag=!mosin_craft] run tag @e remove mosin_craft_hook

execute at @e[tag=mosin_craft_hook] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=mosin_craft_hook] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=mosin_craft_hook] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 1303, ammo: -1, display: {Name: '{"text":"Mosin Nagant","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 12","italic":false,"color":"gray"}', '{"text":"Distance: 100m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","mosin"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.2,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.8,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}], HideFlags:2}}, PickupDelay: 40s}

execute as @e[tag=mosin_craft_hook] run kill @e[tag=mosin_craft]
