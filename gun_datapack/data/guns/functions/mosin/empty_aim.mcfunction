tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1303, Tags: ["mosin"]}}]}, nbt=!{SelectedItem: {}}] add mosin_aim0

item replace entity @a[tag=mosin_aim0] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1303, ammo: 0, display: {Name: '{"text":"Mosin Nagant","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 12","italic":false,"color":"gray"}', '{"text":"Distance: 100m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","mosin"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.2,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.8,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}], HideFlags:2}
item replace entity @a[tag=mosin_aim0] weapon.offhand with minecraft:air

tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1304, Tags: ["mosin"]}}]}, nbt=!{SelectedItem: {}}] add mosin_aim1

item replace entity @a[tag=mosin_aim1] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1304, ammo: -1, display: {Name: '{"text":"Mosin Nagant","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 12","italic":false,"color":"gray"}', '{"text":"Distance: 100m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","mosin"], AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.2,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.8,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}], HideFlags:2}
item replace entity @a[tag=mosin_aim1] weapon.offhand with minecraft:air

tag @a remove mosin_aim0
tag @a remove mosin_aim1
