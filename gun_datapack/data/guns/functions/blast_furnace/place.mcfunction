execute if entity @s[y_rotation=-135] run data merge entity @s {Rotation: [180.0f, 0.0f]}
execute if entity @s[y_rotation=-45] run data merge entity @s {Rotation: [-90.0f, 0.0f]}
execute if entity @s[y_rotation=45] run data merge entity @s {Rotation: [0.0f, 0.0f]}
execute if entity @s[y_rotation=135] run data merge entity @s {Rotation: [90.0f, 0.0f]}

execute at @s run setblock ~ ~ ~ cobblestone

tag @s remove non_placed
