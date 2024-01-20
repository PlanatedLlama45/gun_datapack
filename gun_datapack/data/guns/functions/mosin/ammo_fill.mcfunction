execute at @s run playsound guns:load_mag player @a ~ ~ ~ 8

item replace entity @s weapon.mainhand with iron_nugget{CustomModelData: 1302, display: {Name: '{"text": "Clip", "italic": false}', Lore: ['{"text": "Bullet type: Rifle", "italic": false, "color": "gray"}', '{"text": "Weapon: Mosin Nagant", "italic": false, "color": "gray"}', '{"text": "Capacity: 5rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","mosin"]}
item replace entity @s weapon.offhand with air

scoreboard players set @s guns.item_num 0
function guns:mosin/ammo_fill_loop
