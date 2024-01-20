execute if entity @s[nbt={Inventory:[{tag: {Tags: ["ammo", "mosin"], CustomModelData: 1302}}], SelectedItem: {tag: {CustomModelData: 1304}}}] run function guns:mosin/reload_end_first
execute if entity @s[nbt={SelectedItem: {tag: {CustomModelData: 1303}}}] run function guns:mosin/reload_begin
