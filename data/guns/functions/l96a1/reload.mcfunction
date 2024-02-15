execute if entity @s[nbt={Inventory:[{tag: {Tags: ["ammo", "l96a1"], CustomModelData: 1202}}], SelectedItem: {tag: {CustomModelData: 1204}}}] run function guns:l96a1/reload_end_first
execute if entity @s[nbt={SelectedItem: {tag: {CustomModelData: 1203}}}] run function guns:l96a1/reload_begin
