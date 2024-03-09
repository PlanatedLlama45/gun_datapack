# setup
scoreboard players set @s rightClick 0
tag @s add shooter

scoreboard players set @s guns.shoot_distance 0
scoreboard players set @s guns.shoot_pierced 0

execute positioned ~ ~0.4 ~ run particle poof ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal

# check for weapons
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["glock_23"]}}}] run function guns:glock_23/shoot
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["desert_eagle"]}}}] run function guns:desert_eagle/shoot
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["l96a1"]}}}] run function guns:l96a1/shoot
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["mosin"]}}}] run function guns:mosin/shoot

# decrease ammo
scoreboard players remove @s guns.ammo 1
setblock ~ -64 ~ barrel

item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand
execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get @s guns.ammo
item replace entity @s weapon.mainhand from block ~ -64 ~ container.0

setblock ~ -64 ~ bedrock

# end
execute if score @s guns.ammo > zero CONST run scoreboard players set @s guns.cooldown 0
tag @s remove shooter
tag @s remove played_ricochet
