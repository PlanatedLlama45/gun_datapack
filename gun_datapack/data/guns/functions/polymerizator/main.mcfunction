execute as @e[tag=polymerizator, tag=non_placed] at @s run function guns:polymerizator/place
execute as @e[tag=polymerizator, tag=!non_placed] at @s run function guns:polymerizator/update
execute as @e[tag=polymerizator, tag=!non_placed] at @s if block ~ ~ ~ air run function guns:polymerizator/destroy
execute as @e[tag=polymerizator, tag=!non_placed] at @s run function guns:polymerizator/sound

clear @a barrier{Tags: ["polymerizator_interface"]}
