execute as @a[nbt={SelectedItem: {tag: {ammo: 0, Tags: ["desert_eagle"]}}}] if entity @s[nbt=!{SelectedItem: {tag: {CustomModelData: 1104, Tags: ["desert_eagle"]}}}] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1103, Tags: ["gun", "desert_eagle"], display: {Name: '{"text":"Desert Eagle","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 8hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 rounds per minute","italic":false,"color":"gray"}']}, ammo: 0, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}

playsound minecraft:block.note_block.hat player @a ~ ~ ~ 2 1.5
