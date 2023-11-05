execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!open] run stopsound @a[distance=..10] block block.barrel.open
execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!open] run playsound block.iron_trapdoor.open block @a ~ ~ ~ 1
execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!open] run tag @s remove closed
execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!open] run tag @s add open

execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=!closed] run stopsound @a[distance=..10] block block.barrel.close
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=!closed] run playsound block.iron_trapdoor.close block @a ~ ~ ~ 1
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=!closed] run tag @s remove open
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=!closed] run tag @s add closed
