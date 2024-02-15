execute if score @s guns.polymerizator_water matches 0 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1101
execute if score @s guns.polymerizator_water matches 250 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1102
execute if score @s guns.polymerizator_water matches 500 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1103
execute if score @s guns.polymerizator_water matches 750 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1104
execute if score @s guns.polymerizator_water matches 1000 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1105

item replace block ~ ~ ~ container.1 with barrier{Tags: ["polymerizator_interface"]}
item replace block ~ ~ ~ container.10 with barrier{Tags: ["polymerizator_interface"]}
item modify block ~ ~ ~ container.1 guns:polimerizator_water_top
item modify block ~ ~ ~ container.10 guns:polimerizator_water_bottom

function guns:polymerizator/interface/cook_check

function guns:polymerizator/interface/fill

item replace block ~ ~ ~ container.23 with barrier{CustomModelData: 1001, Tags: ["polymerizator_interface"]}
execute if block ~ ~-1 ~ #guns:heating run item replace block ~ ~ ~ container.23 with barrier{CustomModelData: 1306, Tags: ["polymerizator_interface"]}
execute if entity @s[tag=cooking] if score @s guns.processing_timer < polymerizator guns.PROCESSING_TIME run function guns:polymerizator/interface/cook_update
execute if entity @s[tag=cooking] if score @s guns.processing_timer >= polymerizator guns.PROCESSING_TIME run function guns:polymerizator/interface/cook_end
execute if entity @s[tag=!cooking] run data modify block ~ ~ ~ Items[{Slot: 23b}].tag.display.Name set value '{"text": ""}'

execute if score @s guns.polymerizator_water matches 0 if data block ~ ~ ~ Items[{Slot: 19b, id: "minecraft:water_bucket"}] run function guns:polymerizator/interface/water_in
