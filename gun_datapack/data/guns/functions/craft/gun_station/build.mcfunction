tag @e[type=item, nbt={Item: {id: "minecraft:iron_ingot", Count: 2b, tag: {Tags: ["steel"]}}}] add gun_station_build_steel
execute as @e[tag=gun_station_build_steel] at @s if block ~ ~-1 ~ smithing_table run tag @e[type=item, distance=..0.5, nbt={Item: {id: "minecraft:iron_ingot", Count: 1b, tag: {Tags: ["black_steel"]}}}] add gun_station_build_black_steel

execute as @e[tag=gun_station_build_black_steel] at @s align xyz run particle minecraft:cloud ~0.5 ~-0.5 ~0.5 0.3 0.3 0.3 0.05 30 normal
execute at @e[tag=gun_station_build_black_steel] align xyz run playsound block.anvil.place block @a ~0.5 ~-0.5 ~0.5 10
execute as @e[tag=gun_station_build_black_steel] at @s run setblock ~ ~-1 ~ oak_planks
execute as @e[tag=gun_station_build_black_steel] at @s align xyz run summon minecraft:armor_stand ~0.5 ~-1 ~0.5 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "barrier", Count: 1b, tag: {CustomModelData: 1101}}], Tags: ["gun_station"]}

execute as @e[tag=gun_station_build_black_steel] run kill @e[tag=gun_station_build_steel]
kill @e[tag=gun_station_build_black_steel]
