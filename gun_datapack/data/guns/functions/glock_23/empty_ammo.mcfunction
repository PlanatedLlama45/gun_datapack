execute as @a[nbt={SelectedItem: {tag: {ammo: 0, Tags: ["glock_23"]}}}] if entity @s[nbt=!{SelectedItem: {tag: {CustomModelData: 1004}}}] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1003, display: {Name: '{"text":"Glock 23","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5hp","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 150 rounds per minute","italic":false,"color":"gray"}']}, Tags: ["gun","glock_23"], AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], ammo: 0, HideFlags:2}

playsound minecraft:block.note_block.hat player @a ~ ~ ~ 2 1.5
