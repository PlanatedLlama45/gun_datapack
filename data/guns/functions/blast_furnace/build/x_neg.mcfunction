# layer 1
execute unless block ~ ~ ~-1 bricks run tag @s add fail
execute unless block ~1 ~ ~-1 bricks run tag @s add fail
execute unless block ~2 ~ ~-1 bricks run tag @s add fail

execute unless block ~1 ~ ~ lava run tag @s add fail
execute unless block ~2 ~ ~ bricks run tag @s add fail

execute unless block ~ ~ ~1 bricks run tag @s add fail
execute unless block ~1 ~ ~1 bricks run tag @s add fail
execute unless block ~2 ~ ~1 bricks run tag @s add fail

# layer 2
execute unless block ~ ~1 ~-1 bricks run tag @s add fail
execute unless block ~1 ~1 ~-1 bricks run tag @s add fail
execute unless block ~2 ~1 ~-1 bricks run tag @s add fail

execute unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_bars run tag @s add fail
execute unless block ~1 ~1 ~ air run tag @s add fail
execute unless block ~2 ~1 ~ bricks unless block ~ ~1 ~ iron_bars run tag @s add fail

execute unless block ~ ~1 ~1 bricks run tag @s add fail
execute unless block ~1 ~1 ~1 bricks run tag @s add fail
execute unless block ~2 ~1 ~1 bricks run tag @s add fail

# layer 3
execute unless block ~ ~2 ~-1 brick_slab[type=bottom, waterlogged=false] run tag @s add fail
execute unless block ~1 ~2 ~-1 brick_slab[type=bottom, waterlogged=false] run tag @s add fail
execute unless block ~2 ~2 ~-1 brick_slab[type=bottom, waterlogged=false] run tag @s add fail

execute unless block ~ ~2 ~ brick_slab[type=bottom, waterlogged=false] run tag @s add fail
execute unless block ~1 ~2 ~ bricks run tag @s add fail
execute unless block ~2 ~2 ~ bricks run tag @s add fail

execute unless block ~ ~2 ~1 brick_slab[type=bottom, waterlogged=false] run tag @s add fail
execute unless block ~1 ~2 ~1 bricks run tag @s add fail
execute unless block ~2 ~2 ~1 bricks run tag @s add fail

# layer 4
execute unless block ~1 ~3 ~ brick_wall[waterlogged=false] run tag @s add fail
execute unless block ~2 ~3 ~ brick_wall[waterlogged=false] run tag @s add fail

execute unless block ~1 ~3 ~1 brick_wall[waterlogged=false] run tag @s add fail
execute unless block ~2 ~3 ~1 brick_wall[waterlogged=false] run tag @s add fail

# layer 5
execute unless block ~1 ~4 ~ brick_wall[waterlogged=false] run tag @s add fail
execute unless block ~2 ~4 ~ brick_wall[waterlogged=false] run tag @s add fail

execute unless block ~1 ~4 ~1 brick_wall[waterlogged=false] run tag @s add fail
execute unless block ~2 ~4 ~1 brick_wall[waterlogged=false] run tag @s add fail

# layer 6
execute unless block ~1 ~5 ~ air run tag @s add fail
execute unless block ~2 ~5 ~ air run tag @s add fail

execute unless block ~1 ~5 ~1 air run tag @s add fail
execute unless block ~2 ~5 ~1 air run tag @s add fail

# layer 7
execute unless block ~1 ~6 ~ air run tag @s add fail
execute unless block ~2 ~6 ~ air run tag @s add fail

execute unless block ~1 ~6 ~1 air run tag @s add fail
execute unless block ~2 ~6 ~1 air run tag @s add fail
