tag @s remove non_built

setblock ~ ~1 ~ iron_bars
setblock ~ ~ ~ barrel{CustomName: '{"text": "            Blast Furnace"}'}

execute align xyz run summon interaction ~0.5 ~1 ~0.5 {width: 1, height: 1, Tags: ["blast_furnace_bars_protection"]}
