execute if entity @s[nbt={Inventory:[{tag: {Tags: ["ammo", "desert_eagle"], CustomModelData: 1102}}], SelectedItem: {tag: {CustomModelData: 1104}}}] run function guns:desert_eagle/reload_end_first
execute if entity @s[nbt={SelectedItem: {tag: {CustomModelData: 1103}}}] run function guns:desert_eagle/reload_begin
