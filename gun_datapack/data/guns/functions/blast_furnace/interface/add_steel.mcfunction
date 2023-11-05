execute store result score @s guns.blast_furnace_item_decrease run data get block ~ ~ ~ Items[{Slot: 16b}].Count
scoreboard players add @s guns.blast_furnace_item_decrease 1
execute store result block ~ ~ ~ Items[{Slot: 16b}].Count byte 1 run scoreboard players get @s guns.blast_furnace_item_decrease
