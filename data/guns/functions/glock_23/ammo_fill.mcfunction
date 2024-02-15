execute at @s run playsound guns:load_mag player @a ~ ~ ~ 8

item replace entity @s weapon.mainhand with iron_nugget{CustomModelData: 1002, display: {Name: '{"text": "Magazine", "italic": false}', Lore: ['{"text": "Bullet type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapon: Glock 23", "italic": false, "color": "gray"}', '{"text": "Capacity: 17rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","glock_23"]}
item replace entity @s weapon.offhand with air

scoreboard players set @s guns.item_num 0
function guns:glock_23/ammo_fill_loop
