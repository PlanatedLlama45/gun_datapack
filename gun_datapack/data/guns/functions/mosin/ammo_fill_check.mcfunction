tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: 1301, Tags: ["ammo", "mosin"]}}]}] add mosin_ammo_fill
tag @a[tag=mosin_ammo_fill, nbt={SelectedItem: {}}] remove mosin_ammo_fill

execute as @a[tag=mosin_ammo_fill] store result score @s guns.item_num run clear @s iron_nugget{Tags: ["bullet", "rifle"], CustomModelData: 2002} 0

execute as @a[tag=mosin_ammo_fill] if score @s guns.item_num >= mosin guns.MAX_AMMO run function guns:mosin/ammo_fill
