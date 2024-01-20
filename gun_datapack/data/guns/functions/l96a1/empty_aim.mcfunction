tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1203, Tags: ["l96a1"]}}]}, nbt=!{SelectedItem: {}}] add l96a1_aim0

item replace entity @a[tag=l96a1_aim0] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1203, display: {Name: '{"text":"L96A1","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 14","italic":false,"color":"gray"}', '{"text":"Distance: 180m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","l96a1"], HideFlags:2, ammo: 0, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.25,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:7,Slot:mainhand,Operation:0,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.9,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}]}
item replace entity @a[tag=l96a1_aim0] weapon.offhand with minecraft:air

tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1204, Tags: ["l96a1"]}}]}, nbt=!{SelectedItem: {}}] add l96a1_aim1

item replace entity @a[tag=l96a1_aim1] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1204, display: {Name: '{"text":"L96A1","italic":false}', Lore: ['{"text":"Type: Bolt-Action Rifle","italic":false,"color":"gray"}', '{"text":"Damage: 14","italic":false,"color":"gray"}', '{"text":"Distance: 180m","italic":false,"color":"gray"}', '{"text":"Speed: 35 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","l96a1"], HideFlags:2, ammo: -1, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.25,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:7,Slot:mainhand,Operation:0,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]},{AttributeName:"generic.attack_speed",Amount:-2.9,Slot:mainhand,Operation:0,Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}]}
item replace entity @a[tag=l96a1_aim1] weapon.offhand with minecraft:air

tag @a remove l96a1_aim0
tag @a remove l96a1_aim1
