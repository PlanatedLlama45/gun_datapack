tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1103, Tags: ["desert_eagle"]}}]}, nbt=!{SelectedItem: {}}] add desert_eagle_aim0

item replace entity @a[tag=desert_eagle_aim0] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1103, Tags: ["gun", "desert_eagle"], display: {Name: '{"text":"Desert Eagle","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 8hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 shots per minute","italic":false,"color":"gray"}']}, ammo: 0, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}
item replace entity @a[tag=desert_eagle_aim0] weapon.offhand with minecraft:air

tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1104, Tags: ["desert_eagle"]}}]}, nbt=!{SelectedItem: {}}] add desert_eagle_aim1

item replace entity @a[tag=desert_eagle_aim1] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1104, Tags: ["gun", "desert_eagle"], display: {Name: '{"text":"Desert Eagle","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 8hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 shots per minute","italic":false,"color":"gray"}']}, ammo: -1, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}
item replace entity @a[tag=desert_eagle_aim1] weapon.offhand with minecraft:air

tag @a remove desert_eagle_aim0
tag @a remove desert_eagle_aim1
