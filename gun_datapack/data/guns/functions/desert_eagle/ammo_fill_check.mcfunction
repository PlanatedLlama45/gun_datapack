tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1101, Tags: ["ammo", "desert_eagle"]}}]}] add desert_eagle_ammo_fill
tag @a[tag=desert_eagle_ammo_fill, nbt={SelectedItem: {}}] remove desert_eagle_ammo_fill

execute as @a[tag=desert_eagle_ammo_fill] store result score @s guns.itemNum run clear @s iron_nugget{Tags: ["bullet", "pistol"], CustomModelData: 2001} 0

execute as @a[tag=desert_eagle_ammo_fill] if score @s guns.itemNum >= desert_eagle guns.MAX_AMMO run function guns:desert_eagle/ammo_fill
