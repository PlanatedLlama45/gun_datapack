execute at @s run playsound guns:load_mag player @a ~ ~ ~ 8

item replace entity @s weapon.mainhand with iron_nugget{CustomModelData: 1102, display: {Name: '{"text": "Magazine", "italic": false}', Lore: ['{"text": "Bullet type: Pistol", "italic": false, "color": "gray"}', '{"text": "Weapon: Desert Eagle", "italic": false, "color": "gray"}', '{"text": "Capacity: 7rnd", "italic": false, "color": "gray"}']}, Tags: ["ammo","desert_eagle"]}
item replace entity @s weapon.offhand with air

scoreboard players set @s guns.item_num 0
function guns:desert_eagle/ammo_fill_loop
