# right click and shift
execute as @a[scores={rightClick=1.., shift=1..}, nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] if score @s guns.ammo matches 0 at @s run function guns:reload
execute as @a[scores={rightClick=1.., shift=1..}, nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] if score @s guns.ammo matches -1 at @s run function guns:reload
execute as @a[scores={rightClick=1.., shift=0}, nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] if score @s guns.ammo > zero CONST at @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function guns:shoot_first_check
execute as @a[scores={rightClick=1.., shift=1..}, nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] if score @s guns.ammo > zero CONST at @s positioned ~ ~1.32 ~ positioned ^ ^ ^0.5 run function guns:shoot_first_check
execute as @a[scores={rightClick=1.., shift=0}, nbt={SelectedItem: {tag: {Tags: ["gun"]}}}] if score @s guns.ammo matches 0 at @s run playsound guns:gun_click player @a ~ ~ ~ 2 1.5

scoreboard players set @a rightClick 0
scoreboard players set @a shift 0

# cooldown
execute as @a run function guns:cooldown
