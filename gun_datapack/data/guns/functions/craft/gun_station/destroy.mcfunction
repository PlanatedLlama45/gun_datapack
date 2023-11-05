execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:iron_ingot", Count: 2b, tag: {CustomModelData: 1001, Tags: ["steel"], display: {Name: '{"text": "Steel", "italic": false}'}}}, PickupDelay: 20s}
execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:smithing_table", Count: 1b}, PickupDelay: 20s}
execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air run kill @e[type=item, distance=..1, nbt={Item: {id: "minecraft:oak_planks", Count: 1b}}]
execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air align xyz run playsound block.anvil.destroy block @a ~0.5 ~0.5 ~0.5 10
execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air align xyz run particle block smithing_table ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 64 normal
execute as @e[type=armor_stand, tag=gun_station] at @s if block ~ ~ ~ air run kill @s
