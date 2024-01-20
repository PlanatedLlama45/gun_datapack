# non-dummy scoreboards
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time

# dummy scoreboards
scoreboard objectives add guns.item_num dummy
scoreboard objectives add guns.ammo dummy
scoreboard objectives add guns.shoot_distance dummy
scoreboard objectives add guns.shoot_pierced dummy
scoreboard objectives add guns.cooldown dummy
scoreboard objectives add guns.reload dummy
scoreboard objectives add guns.last_shot dummy
scoreboard objectives add guns.reload_gun dummy
scoreboard objectives add guns.recoil dummy
scoreboard objectives add guns.player_rot dummy

scoreboard objectives add guns.processing_timer dummy
scoreboard objectives add guns.processing_progress dummy

scoreboard objectives add guns.polymerizator_water dummy

scoreboard objectives add guns.temp dummy

# constants
scoreboard objectives add CONST dummy
scoreboard players set zero CONST 0
scoreboard players set one_hundred CONST 100
scoreboard players set six CONST 6
scoreboard players set fifty CONST 50
scoreboard players set two CONST 2
scoreboard players set twelve CONST 12

scoreboard objectives add guns.MAX_DISTANCE dummy
scoreboard objectives add guns.MAX_PIERCING dummy
scoreboard objectives add guns.COOLDOWN_TIME dummy
scoreboard objectives add guns.RELOAD_TIME dummy
scoreboard objectives add guns.MAX_AMMO dummy
scoreboard objectives add guns.RECOIL dummy

scoreboard objectives add guns.PROCESSING_TIME dummy

# config
function guns:config
