execute if entity @s[y_rotation=-90] run function guns:blast_furnace/build/x_pos
execute if entity @s[y_rotation=0] run function guns:blast_furnace/build/z_pos
execute if entity @s[y_rotation=90] run function guns:blast_furnace/build/x_neg
execute if entity @s[y_rotation=180] run function guns:blast_furnace/build/z_neg

execute if entity @s[tag=fail, tag=!non_built] run function guns:blast_furnace/unbuild
execute if entity @s[tag=!fail, tag=non_built] run function guns:blast_furnace/build/finish
tag @s remove fail
