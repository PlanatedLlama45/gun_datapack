execute at @s run playsound guns:load_mag player @a ~ ~ ~ 8

item replace entity @s weapon.mainhand with iron_nugget{CustomModelData: 1202, display: {Name: '{"text": "Magazine", "italic": false}', Lore: ['{"text": "Bullet type: Rifle", "italic": false, "color": "gray"}', '{"text": "Weapon: L96A1", "italic": false, "color": "gray"}', '{"text": "Capacity: 10rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","l96a1"]}
item replace entity @s weapon.offhand with air

scoreboard players set @s guns.item_num 0
function guns:l96a1/ammo_fill_loop
