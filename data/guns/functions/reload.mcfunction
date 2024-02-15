# check for weapons
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["glock_23"]}}}] run function guns:glock_23/reload
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["desert_eagle"]}}}] run function guns:desert_eagle/reload
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["l96a1"]}}}] run function guns:l96a1/reload
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["mosin"]}}}] run function guns:mosin/reload

# Gun reload id:

# glock 23 - 1
# desert eagle - 2
# l96a1 - 3
# mosin - 4
