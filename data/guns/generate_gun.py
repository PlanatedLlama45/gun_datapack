import json
import os

# NBT generation
def getItemNbt(data: dict, model: int, ammo: int, isAim: bool) -> str:
    speed = data['display']['info']['speed']
    if speed == -1:
        speed = round(1200 / data['config']['COOLDOWN_TIME']) # gt/rnd -> rnd/m
    
    r = '{CustomModelData: ' + str(data['base_model'] + model) + \
        ', display: {Name: \'{"text":"' + data['display']['name'] + '","italic":false}\', Lore: [\'{"text":"Type: ' + data['display']['info']['type'] + \
        '","italic":false,"color":"gray"}\', \'{"text":"Damage: ' + str(data['display']['info']['damage']) + \
        '","italic":false,"color":"gray"}\', \'{"text":"Distance: ' + str(data['config']['MAX_DISTANCE'] // 2) + \
        'm","italic":false,"color":"gray"}\', \'{"text":"Speed: ' + str(speed) + ' rounds per minute","italic":false,"color":"gray"}\']}, Tags: ["gun","' + data['str_id'] + \
        '"], HideFlags:2'
    
    if ammo != -2:
         r += ', ammo: ' + str(ammo)
    
    # Add AttributeModifiers
    attributeData = data['attributes']['aim' * isAim + 'unaim' * (not isAim)]
    numAttributes = 0
    attributes = ''

    if attributeData['movement'][1] != -1:
        attributes += '{AttributeName:"generic.movement_speed",Amount:' + str(attributeData['movement'][0]) + ',Slot:mainhand,Operation:' + str(attributeData['movement'][1]) + ',Name:"generic.movement_speed",UUID:[I;-123103,15850,132440,-31700]}'
        numAttributes += 1
    
    if attributeData['melee_dmg'][1] != -1:
        if numAttributes != 0:
            attributes += ','
        attributes += '{AttributeName:"generic.attack_damage",Amount:' + str(attributeData['melee_dmg'][0]) + ',Slot:mainhand,Operation:' + str(attributeData['melee_dmg'][1]) + ',Name:"generic.attack_damage",UUID:[I;-123103,15950,132440,-31900]}'
        numAttributes += 1
    
    if attributeData['melee_spd'][1] != -1:
        if numAttributes != 0:
            attributes += ','
        attributes += '{AttributeName:"generic.attack_speed",Amount:' + str(attributeData['melee_spd'][0]) + ',Slot:mainhand,Operation:' + str(attributeData['melee_spd'][1]) + ',Name:"generic.attack_speed",UUID:[I;-12408,13901,141411,-27802]}'
        numAttributes += 1

    if numAttributes != 0:
        r += ', AttributeModifiers:[' + attributes + ']}'

    return r

def getAmmoNbt(data: dict, model: int, isEmpty: bool) -> str:
    empty = ' (empty)' * isEmpty
    r = '{CustomModelData: ' + str(data['base_model'] + model) + ', display: {Name: \'{"text": "' + data['ammo']['mag_name'] + empty + \
        '", "italic": false}\', Lore: [\'{"text": "Bullet type: ' + data['ammo']['bullet_type_name'] + '", "italic": false, "color": "gray"}\', \'{"text": "Weapon: ' + data['display']['name'] + \
        '", "italic": false, "color": "gray"}\', \'{"text": "Capacity: ' + str(data['config']['MAX_AMMO']) + \
        'rnd", "italic": false, "color": "gray"}\']}, Tags: ["ammo","' + data['str_id'] + '"]}'

    return r

# Config/Entry point editing
def addConfig(data: dict, cwd: str) -> None:
    with open(cwd + "config.mcfunction", 'r') as file:
        config = file.read()
        if data['str_id'] in config:
            return
    
    with open(cwd + "config.mcfunction", 'a') as file:
        file.writelines(
            f"\n# {data['str_id']}\n"
            f"scoreboard players set {data['str_id']} guns.MAX_DISTANCE {data['config']['MAX_DISTANCE']}\n"
            f"scoreboard players set {data['str_id']} guns.COOLDOWN_TIME {data['config']['COOLDOWN_TIME']}\n"
            f"scoreboard players set {data['str_id']} guns.RELOAD_TIME {data['config']['RELOAD_TIME']}\n"
            f"scoreboard players set {data['str_id']} guns.MAX_PIERCING {data['config']['MAX_PIERCING']}\n"
            f"scoreboard players set {data['str_id']} guns.MAX_AMMO {data['config']['MAX_AMMO']}\n"
            f"scoreboard players set {data['str_id']} guns.RECOIL {data['config']['RECOIL']}\n"
        )

# MCFunction generation
def makeAim(data: dict, cwd: str) -> None:
    with open(cwd + "aim.mcfunction", 'w') as file:
        file.writelines(
            'tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: ' + str(data['base_model'] + 1) + ', Tags: ["' +
                data['str_id'] + '"]}}]}, nbt=!{SelectedItem: {}}] add ' + data['str_id'] + '_aim\n'
            '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim] weapon.mainhand with minecraft:carrot_on_a_stick' + getItemNbt(data, 2, -1, True) + '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim] weapon.offhand with minecraft:air\n'
            '\n'
            '# replace ammo\n'
            'execute at @a[tag=' + data['str_id'] + '_aim] run setblock ~ -64 ~ barrel\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get @s guns.ammo\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run item replace entity @s weapon.mainhand from block ~ -64 ~ container.0\n'
            '\n'
            'execute at @a[tag=' + data['str_id'] + '_aim] run setblock ~ -64 ~ bedrock\n'
            '\n'
            'tag @a remove ' + data['str_id'] + '_aim\n'
        )

def makeAmmoFillCheck(data: dict, cwd: str) -> None:
    with open(cwd + "ammo_fill_check.mcfunction", 'w') as file:
        file.writelines(
            'tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:iron_nugget", Count: 1b, tag: {CustomModelData: ' + str(data['base_model'] + 1) +
                ', Tags: ["ammo", "' + data['str_id'] + '"]}}]}] add ' + data['str_id'] + '_ammo_fill\n'
            'tag @a[tag=' + data['str_id'] + '_ammo_fill, nbt={SelectedItem: {}}] remove ' + data['str_id'] + '_ammo_fill\n'
            '\n'
            'execute as @a[tag=' + data['str_id'] + '_ammo_fill] store result score @s guns.item_num run clear @s iron_nugget{Tags: ["bullet", "' + data['ammo']['bullet_type'] +
                '"], CustomModelData: ' + str(data['ammo']['bullet_model']) + '} 0\n'
            '\n'
            'execute as @a[tag=' + data['str_id'] + '_ammo_fill] if score @s guns.item_num >= ' + data['str_id'] + ' guns.MAX_AMMO run function guns:' + data['str_id'] + '/ammo_fill\n'
        )

def makeAmmoFillLoop(data: dict, cwd: str) -> None:
    with open(cwd + "ammo_fill_loop.mcfunction", 'w') as file:
        file.writelines(
            'clear @s iron_nugget{Tags: ["bullet", "' + data['ammo']['bullet_type'] + '"], CustomModelData: ' + str(data['ammo']['bullet_model']) + '} 1\n'
            'scoreboard players add @s guns.item_num 1\n'
            'execute if score @s guns.item_num < ' + data['str_id'] + ' guns.MAX_AMMO run function guns:' + data['str_id'] + '/ammo_fill_loop\n'
        )

def makeAmmoFill(data: dict, cwd: str) -> None:
    with open(cwd + "ammo_fill.mcfunction", 'w') as file:
        file.writelines(
            'execute at @s run playsound guns:load_mag player @a ~ ~ ~ 8\n'
            '\n'
            'item replace entity @s weapon.mainhand with iron_nugget' + getAmmoNbt(data, 2, False) + '\n'
            'item replace entity @s weapon.offhand with air\n'
            '\n'
            'scoreboard players set @s guns.item_num 0\n'
            'function guns:' + data['str_id'] + '/ammo_fill_loop\n'
        )

def makeEmptyAim(data: dict, cwd: str) -> None:
    with open(cwd + "empty_aim.mcfunction", 'w') as file:
        file.writelines(
            'tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: ' + str(data['base_model'] + 3) + \
                ', Tags: ["' + data['str_id'] + '"]}}]}, nbt=!{SelectedItem: {}}] add ' + data['str_id'] + '_aim0\n'
            '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim0] weapon.mainhand with minecraft:carrot_on_a_stick' + getItemNbt(data, 3, 0, False) + '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim0] weapon.offhand with minecraft:air\n'
            '\n'
            'tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: ' + str(data['base_model'] + 4) + \
                ', Tags: ["' + data['str_id'] + '"]}}]}, nbt=!{SelectedItem: {}}] add ' + data['str_id'] + '_aim1\n'
            '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim1] weapon.mainhand with minecraft:carrot_on_a_stick' + getItemNbt(data, 4, -1, False) + '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim1] weapon.offhand with minecraft:air\n'
            '\n'
            'tag @a remove ' + data['str_id'] + '_aim0\n'
            'tag @a remove ' + data['str_id'] + '_aim1\n'
        )

def makeEmptyAmmo(data: dict, cwd: str) -> None:
    with open(cwd + "empty_ammo.mcfunction", 'w') as file:
        file.writelines(
            'execute as @a[nbt={SelectedItem: {tag: {ammo: 0, Tags: ["' + data['str_id'] + '"]}}}] if entity @s[nbt=!{SelectedItem: {tag: {CustomModelData: ' + str(data['base_model'] + 4) + \
                '}}}] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick' + getItemNbt(data, 3, 0, False) + '\n'
            '\n'
            'playsound guns:gun_click player @a ~ ~ ~ 4\n'
        )

def makeMain(data: dict, cwd: str) -> None:
    with open(cwd + "main.mcfunction", 'w') as file:
        file.writelines(
            'function guns:' + data['str_id'] + '/aim\n'
            'function guns:' + data['str_id'] + '/unaim\n'
            'function guns:' + data['str_id'] + '/empty_aim\n'
            '\n'
            'function guns:' + data['str_id'] + '/empty_ammo\n'
            'function guns:' + data['str_id'] + '/ammo_fill_check\n'
            '\n'
            'execute as @a[tag=reloading, scores={guns.reload_gun=' + str(data['id']) + '}] if score @s guns.reload >= ' + data['str_id'] + \
                ' guns.RELOAD_TIME at @s run function guns:' + data['str_id'] + '/reload_end_second\n'
        )
        if data['bolt_action'] != -1:
            file.writelines('execute as @a[scores={guns.last_shot=' + str(data['id']) + ',guns.ammo=1..,guns.cooldown=' + str(data['bolt_action']) + '}] at @s run playsound guns:' + data['str_id'] + '.bolt player @a ~ ~ ~ 12')

def makeRecoil(data: dict, cwd: str) -> None:
    with open(cwd + "recoil.mcfunction", 'w') as file:
        file.writelines(
            'tp @s ~ ~ ~ ~ ~-1\n'
            'scoreboard players add @s guns.recoil 1\n'
            'execute if score @s guns.recoil < ' + data['str_id'] + ' guns.RECOIL at @s run function guns:' + data['str_id'] + '/recoil\n'
        )

def makeReloadBegin(data: dict, cwd: str) -> None:
    with open(cwd + "reload_begin.mcfunction", 'w') as file:
        file.writelines(
            'give @s iron_nugget' + getAmmoNbt(data, 1, True) + '\n'
            'item replace entity @s weapon.mainhand with carrot_on_a_stick' + getItemNbt(data, 4, -1, False) + '\n'
            '\n'
            'playsound guns:' + data['str_id'] + '.unload player @a ~ ~ ~ 8\n'
        )

def makeReloadEndFirst(data: dict, cwd: str) -> None:
    with open(cwd + "reload_end_first.mcfunction", 'w') as file:
        file.writelines(
            'playsound guns:' + data['str_id'] + '.reload player @a ~ ~ ~ 8\n'
            'clear @s iron_nugget{Tags: ["ammo", "' + data['str_id'] + '"], CustomModelData: ' + str(data['base_model'] + 2) + '} 1\n'
            'scoreboard players set @s guns.reload 0\n'
            'scoreboard players set @s guns.reload_gun ' + str(data['id']) + '\n'
            'tag @s add reloading\n'
        )

def makeReloadEndSecond(data: dict, cwd: str) -> None:
    with open(cwd + "reload_end_second.mcfunction", 'w') as file:
        file.writelines(
            'item replace entity @s weapon.mainhand with carrot_on_a_stick' + getItemNbt(data, 1, 0, False) + '\n'
            '\n'
            'setblock ~ -64 ~ barrel\n'
            '\n'
            'item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand\n'
            'execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get ' + data['str_id'] + ' guns.MAX_AMMO\n'
            'item replace entity @s weapon.mainhand from block ~ -64 ~ container.0\n'
            '\n'
            'setblock ~ -64 ~ bedrock\n'
            '\n'
            'tag @s remove reloading\n'
        )

def makeReload(data: dict, cwd: str) -> None:
    with open(cwd + "reload.mcfunction", 'w') as file:
        file.writelines(
            'execute if entity @s[nbt={Inventory:[{tag: {Tags: ["ammo", "' + data['str_id'] + '"], CustomModelData: ' + str(data['base_model'] + 2) + '}}], SelectedItem: {tag: {CustomModelData: ' + str(data['base_model'] + 4) + '}}}] run function guns:' + data['str_id'] + '/reload_end_first\n'
            'execute if entity @s[nbt={SelectedItem: {tag: {CustomModelData: ' + str(data['base_model'] + 3) + '}}}] run function guns:' + data['str_id'] + '/reload_begin\n'
        )

def makeShootLoop(data: dict, cwd: str) -> None:
    with open(cwd + "shoot_loop.mcfunction", 'w') as file:
        file.writelines(
            'scoreboard players add @s guns.shoot_distance 1\n'
            '\n'
            'particle minecraft:ash ~ ~ ~ 0 0 0 0.2 1 force\n'
            '\n'
            'execute if entity @e[dx=0, dy=0, dz=0, tag=!shooter] run scoreboard players add @s guns.shoot_pierced 1\n'
            'damage @e[dx=0, dy=0, dz=0, tag=!shooter, limit=1] ' + str(data['display']['info']['damage'] * 2) + ' arrow by @s\n'
            '\n'
            'execute if block ~ ~ ~ #guns:shoot_breakable if score @s guns.shoot_pierced < ' + data['str_id'] + ' guns.MAX_PIERCING run function guns:shoot_break_block\n'
            'execute if block ~ ~ ~ #guns:shoot_through if score @s guns.shoot_distance < ' + data['str_id'] + ' guns.MAX_DISTANCE if score @s guns.shoot_pierced < ' + data['str_id'] + \
                ' guns.MAX_PIERCING positioned ^ ^ ^0.5 run function guns:' + data['str_id'] + '/shoot_loop\n'
            'execute if score @s guns.shoot_distance >= ' + data['str_id'] + ' guns.MAX_DISTANCE run function guns:ricochet\n'
            'execute if score @s guns.shoot_pierced >= ' + data['str_id'] + ' guns.MAX_PIERCING run function guns:ricochet\n'
            'execute unless block ~ ~ ~ #guns:shoot_breakable run function guns:ricochet\n'
            'execute unless block ~ ~ ~ #guns:shoot_through run function guns:ricochet\n'
        )

def makeShoot(data: dict, cwd: str) -> None:
    with open(cwd + "shoot.mcfunction", 'w') as file:
        file.writelines(
            'scoreboard players set @s guns.last_shot ' + str(data['id']) + '\n'
            'playsound guns:' + data['str_id'] + '.fire player @a ~ ~ ~ ' + str(data['volume']) + '\n'
            '\n'
            'function guns:' + data['str_id'] + '/shoot_loop\n'
            '\n'
            'scoreboard players set @s guns.recoil 0\n'
            'execute unless score ' + data['str_id'] + ' guns.RECOIL matches 0 at @s run function guns:' + data['str_id'] + '/recoil\n'
        )

def makeUnaim(data: dict, cwd: str) -> None:
    with open(cwd + "unaim.mcfunction", 'w') as file:
        file.writelines(
            'tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: ' + str(data['base_model'] + 2) + \
                ', Tags: ["' + data['str_id'] + '"]}}]}, nbt=!{SelectedItem: {}}] add ' + data['str_id'] + '_aim\n'
            '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim] weapon.mainhand with minecraft:carrot_on_a_stick' + getItemNbt(data, 1, 0, False) + '\n'
            'item replace entity @a[tag=' + data['str_id'] + '_aim] weapon.offhand with minecraft:air\n'
            '\n'
            '# replace ammo\n'
            'execute at @a[tag=' + data['str_id'] + '_aim] run setblock ~ -64 ~ barrel\n'
            '\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run item replace block ~ -64 ~ container.0 from entity @s weapon.mainhand\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run execute store result block ~ -64 ~ Items[0].tag.ammo int 1 run scoreboard players get @s guns.ammo\n'
            'execute as @a[tag=' + data['str_id'] + '_aim] at @s run item replace entity @s weapon.mainhand from block ~ -64 ~ container.0\n'
            '\n'
            'execute at @a[tag=' + data['str_id'] + '_aim] run setblock ~ -64 ~ bedrock\n'
            '\n'
            'tag @a remove ' + data['str_id'] + '_aim\n'
        )

# Entry point
def main() -> None:
    cwd = os.getcwd() + '\\'

    with open(cwd + "gun_data.json", 'r') as file:
        data = json.load(file)
    data["base_model"] = 900 + data["id"] * 100
    
    gunFolder = cwd + "functions\\" + data["str_id"]
    try: os.mkdir(gunFolder)
    except FileExistsError: pass

    gunFolder += '\\'

    addConfig(data, cwd + "functions\\")

    makeAim(data, gunFolder)
    makeAmmoFillCheck(data, gunFolder)
    makeAmmoFillLoop(data, gunFolder)
    makeAmmoFill(data, gunFolder)
    makeEmptyAim(data, gunFolder)
    makeEmptyAmmo(data, gunFolder)
    makeMain(data, gunFolder)
    makeRecoil(data, gunFolder)
    makeReloadBegin(data, gunFolder)
    makeReloadEndFirst(data, gunFolder)
    makeReloadEndSecond(data, gunFolder)
    makeReload(data, gunFolder)
    makeShootLoop(data, gunFolder)
    makeShoot(data, gunFolder)
    makeUnaim(data, gunFolder)

if __name__ == "__main__":
    main()
