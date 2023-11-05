# check for weapons
execute if entity @s[nbt={SelectedItem: {tag: {Tags: ["desert_eagle"]}}}] run function guns:desert_eagle/reload
