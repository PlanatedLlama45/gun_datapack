tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1201, Tags: ["ammo", "l96a1"]}}]}] add l96a1_ammo_fill
tag @a[tag=l96a1_ammo_fill, nbt={SelectedItem: {}}] remove l96a1_ammo_fill

execute as @a[tag=l96a1_ammo_fill] store result score @s guns.item_num run clear @s iron_nugget{Tags: ["bullet", "rifle"], CustomModelData: 2002} 0

execute as @a[tag=l96a1_ammo_fill] if score @s guns.item_num >= l96a1 guns.MAX_AMMO run function guns:l96a1/ammo_fill
