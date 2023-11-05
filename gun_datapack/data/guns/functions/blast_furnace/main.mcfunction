execute as @e[tag=blast_furnace, tag=non_placed, tag=non_built] at @s run function guns:blast_furnace/place
execute as @e[tag=blast_furnace, tag=!non_placed] at @s run function guns:blast_furnace/build
execute as @e[tag=blast_furnace, tag=!non_placed] at @s if block ~ ~ ~ air run function guns:blast_furnace/destroy
execute as @e[tag=blast_furnace, tag=!non_built] at @s run function guns:blast_furnace/built_update
execute as @e[tag=blast_furnace, tag=!non_built] at @s run function guns:blast_furnace/sound

clear @a barrier{Tags: ["blast_furnace_interface"]}
clear @a barrier{Tags: ["blast_furnace_progress"]}
