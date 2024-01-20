execute as @a[nbt=!{SelectedItem: {tag: {Tags: ["gun"]}}},tag=gun_holder] run title @s actionbar ""

tag @a[nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] add gun_holder
tag @a[nbt=!{SelectedItem: {tag: {Tags: ["gun"]}}}] remove gun_holder

execute as @a[tag=gun_holder] store result score @s guns.ammo run data get entity @s SelectedItem.tag.ammo
execute as @a[tag=gun_holder, tag=!cooling_down] if score @s guns.ammo > zero CONST run title @s actionbar ["",{"text":"-=- Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"guns.ammo"},"color":"yellow"},{"text":" -=-","color":"yellow"}]
execute as @a[tag=gun_holder, tag=!reloading] if score @s guns.ammo matches 0 run title @s actionbar ["",{"text":"-=- Ammo: ","color":"red"},{"score":{"name":"@s","objective":"guns.ammo"},"color":"red"},{"text":" -=-","color":"red"}]

title @a[tag=gun_holder, tag=cooling_down] actionbar {"text": "-=- Cooldown... -=-", "color": "gold"}
title @a[tag=gun_holder, tag=reloading] actionbar {"text": "-=- Reloading... -=-", "color": "gold"}
title @a[tag=gun_holder, tag=!reloading, nbt={SelectedItem: {tag: {ammo: -1, Tags: ["gun"]}}}] actionbar {"text": "-=- Empty -=-", "color": "red"}

scoreboard players set @a[tag=!gun_holder] guns.ammo 0
