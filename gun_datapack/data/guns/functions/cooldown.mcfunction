execute if score @s guns.cooldown matches 0 run tag @s add cooling_down

execute if entity @s[scores={guns.last_shot=1}] if score @s guns.cooldown >= glock_23 guns.COOLDOWN_TIME run tag @s remove cooling_down
execute if entity @s[scores={guns.last_shot=2}] if score @s guns.cooldown >= desert_eagle guns.COOLDOWN_TIME run tag @s remove cooling_down

execute if entity @s[scores={guns.last_shot=1}] if score @s guns.cooldown < glock_23 guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1
execute if entity @s[scores={guns.last_shot=2}] if score @s guns.cooldown < desert_eagle guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1

execute if entity @s[scores={guns.reload_gun=1}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "glock_23"], CustomModelData: 1004}}}] if score @s guns.reload < glock_23 guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
execute if entity @s[scores={guns.reload_gun=2}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "desert_eagle"], CustomModelData: 1104}}}] if score @s guns.reload < desert_eagle guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
