execute if score @s guns.cooldown matches 0 run tag @s add cooling_down

execute if entity @s[scores={guns.last_shot=1}] if score @s guns.cooldown >= glock_23 guns.COOLDOWN_TIME run tag @s remove cooling_down
execute if entity @s[scores={guns.last_shot=2}] if score @s guns.cooldown >= desert_eagle guns.COOLDOWN_TIME run tag @s remove cooling_down
execute if entity @s[scores={guns.last_shot=3}] if score @s guns.cooldown >= l96a1 guns.COOLDOWN_TIME run tag @s remove cooling_down
execute if entity @s[scores={guns.last_shot=4}] if score @s guns.cooldown >= mosin guns.COOLDOWN_TIME run tag @s remove cooling_down

execute if entity @s[scores={guns.last_shot=1}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "glock_23"]}}}] if score @s guns.cooldown < glock_23 guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1
execute if entity @s[scores={guns.last_shot=2}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "desert_eagle"]}}}] if score @s guns.cooldown < desert_eagle guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1
execute if entity @s[scores={guns.last_shot=3}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "l96a1"]}}}] if score @s guns.cooldown < l96a1 guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1
execute if entity @s[scores={guns.last_shot=4}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "mosin"]}}}] if score @s guns.cooldown < mosin guns.COOLDOWN_TIME run scoreboard players add @s guns.cooldown 1

execute if entity @s[scores={guns.reload_gun=1}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "glock_23"], CustomModelData: 1004}}}] if score @s guns.reload < glock_23 guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
execute if entity @s[scores={guns.reload_gun=2}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "desert_eagle"], CustomModelData: 1104}}}] if score @s guns.reload < desert_eagle guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
execute if entity @s[scores={guns.reload_gun=3}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "l96a1"], CustomModelData: 1204}}}] if score @s guns.reload < l96a1 guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
execute if entity @s[scores={guns.reload_gun=4}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["gun", "mosin"], CustomModelData: 1304}}}] if score @s guns.reload < mosin guns.RELOAD_TIME run scoreboard players add @s guns.reload 1
