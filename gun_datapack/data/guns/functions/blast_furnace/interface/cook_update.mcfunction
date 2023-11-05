execute if score @s guns.blast_furnace_timer matches 0 align xyz run playsound block.blastfurnace.fire_crackle block @a ~0.5 ~0.5 ~0.5

scoreboard players add @s guns.blast_furnace_timer 1

scoreboard players operation @s guns.blast_furnace_smelt_progress = @s guns.blast_furnace_timer
scoreboard players operation @s guns.blast_furnace_smelt_progress *= one_hundred CONST
scoreboard players operation @s guns.blast_furnace_smelt_progress /= blast_furnace guns.SMELTING_TIME

data modify block ~ ~ ~ Items append value {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {CustomModelData: 1003, Tags: ["blast_furnace_progress"], display: {Name: '[{"score": {"name": "@s", "objective": "guns.blast_furnace_smelt_progress"}, "color": "white", "italic": false}, {"text": "%", "color": "white", "italic": false}]'}}}
item modify block ~ ~ ~ container.22 guns:blast_furnace_progress
