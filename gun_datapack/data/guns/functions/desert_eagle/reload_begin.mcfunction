playsound guns:desert_eagle.unload player @a ~ ~ ~ 8
give @s iron_nugget{Tags: ["ammo", "desert_eagle"], CustomModelData: 1101, display: {Name: '{"text": "Magazine (empty)", "italic": false}', Lore: ['{"text": "Bullet type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapon: Desert Eagle", "italic": false, "color": "gray"}', '{"text": "Capacity: 7rnd", "italic": false, "color": "gray"}']}}
item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData: 1104, ammo: -1, display: {Name: '{"text": "Desert Eagle", "italic": false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun", "desert_eagle"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}
