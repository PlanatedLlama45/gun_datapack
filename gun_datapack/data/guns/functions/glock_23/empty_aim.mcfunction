tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1003, Tags: ["glock_23"]}}]}, nbt=!{SelectedItem: {}}] add glock_23_aim0

item replace entity @a[tag=glock_23_aim0] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1003, display: {Name: '{"text":"Glock 23","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 150 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","glock_23"], AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], ammo: 0, HideFlags:2}
item replace entity @a[tag=glock_23_aim0] weapon.offhand with minecraft:air

tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1004, Tags: ["glock_23"]}}]}, nbt=!{SelectedItem: {}}] add glock_23_aim1

item replace entity @a[tag=glock_23_aim1] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1004, display: {Name: '{"text":"Glock 23","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 150 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","glock_23"], AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], ammo: -1, HideFlags:2}
item replace entity @a[tag=glock_23_aim1] weapon.offhand with minecraft:air

tag @a remove glock_23_aim0
tag @a remove glock_23_aim1
