execute as @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 3b, tag: {Tags: ["black_steel"]}}}] at @s if entity @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] run tag @s add pistol_barrel_craft_steel

tag @e[tag=pistol_barrel_craft_steel] add pistol_barrel_craft

execute at @e[tag=pistol_barrel_craft_steel] if entity @e[distance=..1, type=item, tag=!pistol_barrel_craft] run tag @e remove pistol_barrel_craft
execute at @e[tag=pistol_barrel_craft_steel] if entity @e[distance=..1, type=item, tag=!pistol_barrel_craft] run tag @e remove pistol_barrel_craft_steel

execute at @e[tag=pistol_barrel_craft_steel] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 5 normal
execute at @e[tag=pistol_barrel_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run playsound block.anvil.use block @a ~0.5 ~0.5 ~0.5 10
execute at @e[tag=pistol_barrel_craft_steel] at @e[type=armor_stand, tag=gun_station, dx=0, dy=0, dz=0] align xyz run summon minecraft:item ~0.5 ~1 ~0.5 {Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 1102, Tags: ["rifle_barrel"], display: {Name: '{"text": "Rifle Barrel", "italic": false}'}, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.1,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:6,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.5,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}], HideFlags:2}}, PickupDelay: 40s}

kill @e[tag=pistol_barrel_craft_steel]
