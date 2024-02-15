item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData: 1101, ammo: 0, display: {Name: '{"text": "Desert Eagle", "italic": false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun", "desert_eagle"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}

setblock ~ -64 ~ barrel

item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand
execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get desert_eagle guns.MAX_AMMO
item replace entity @s weapon.mainhand from block ~ -64 ~ container.0

setblock ~ -64 ~ bedrock

tag @s remove reloading
