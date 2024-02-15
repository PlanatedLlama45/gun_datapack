tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1001, Tags: ["ammo", "glock_23"]}}]}] add glock_23_ammo_fill
tag @a[tag=glock_23_ammo_fill, nbt={SelectedItem: {}}] remove glock_23_ammo_fill

execute as @a[tag=glock_23_ammo_fill] store result score @s guns.item_num run clear @s iron_nugget{Tags: ["bullet", "pistol"], CustomModelData: 2001} 0

execute as @a[tag=glock_23_ammo_fill] if score @s guns.item_num >= glock_23 guns.MAX_AMMO run function guns:glock_23/ammo_fill
