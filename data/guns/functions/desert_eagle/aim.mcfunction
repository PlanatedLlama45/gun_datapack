tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 1101, Tags: ["desert_eagle"]}}]}, nbt=!{SelectedItem: {}}] add desert_eagle_aim

item replace entity @a[tag=desert_eagle_aim] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData: 1102, Tags: ["gun", "desert_eagle"], display: {Name: '{"text":"Desert Eagle","italic":false}', Lore: ['{"text":"Type: Pistol","italic":false,"color":"gray"}', '{"text":"Damage: 5","italic":false,"color":"gray"}', '{"text":"Distance: 50m","italic":false,"color":"gray"}', '{"text":"Speed: 60 rounds per minute","italic":false,"color":"gray"}']}, AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.25,Slot:mainhand,Operation:2,Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]},{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}], HideFlags:2}
item replace entity @a[tag=desert_eagle_aim] weapon.offhand with minecraft:air

# replace ammo
execute at @a[tag=desert_eagle_aim] run setblock ~ -64 ~ barrel
execute as @a[tag=desert_eagle_aim] at @s run item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand
execute as @a[tag=desert_eagle_aim] at @s run execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get @s guns.ammo
execute as @a[tag=desert_eagle_aim] at @s run item replace entity @s weapon.mainhand from block ~ -64 ~ container.0

execute at @a[tag=desert_eagle_aim] run setblock ~ -64 ~ bedrock

tag @a remove desert_eagle_aim
