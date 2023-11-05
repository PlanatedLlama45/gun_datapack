execute if score @s guns.cooldown matches 0 run tag @s add cooling_down
execute if entity @s[scores={guns.last_shot=2}] if score @s guns.cooldown >= desert_eagle guns.COOLDOWN_TIME run tag @s remove cooling_down

execute if entity @s[scores={guns.last_shot=2}] if score @s guns.cooldown < desert_eagle guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1

execute if entity @s[scores={guns.last_shot=2}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "desert_eagle"], CustomModelData: 1104}}}] if score @s guns.reload < desert_eagle guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
