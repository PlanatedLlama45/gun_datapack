item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData: 1301, ammo: 0, display: {Name: '{"text":"Mosin Nagant","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 12","italic":false,"color":"gray"}', '{"text":"Distance: 100m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","mosin"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.2,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.8,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}], HideFlags:2}

setblock ~ -64 ~ barrel

item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand
execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get mosin guns.MAX_AMMO
item replace entity @s weapon.mainhand from block ~ -64 ~ container.0

setblock ~ -64 ~ bedrock

tag @s remove reloading
