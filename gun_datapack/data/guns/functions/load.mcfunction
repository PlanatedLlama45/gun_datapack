# non-dummy scoreboards
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time

# dummy scoreboards
scoreboard objectives add guns.itemNum dummy
scoreboard objectives add guns.ammo dummy
scoreboard objectives add guns.shoot_distance dummy
scoreboard objectives add guns.shoot_pierced dummy
scoreboard objectives add guns.cooldown dummy
scoreboard objectives add guns.reload dummy
scoreboard objectives add guns.last_shot dummy

scoreboard objectives add guns.blast_furnace_timer dummy
scoreboard objectives add guns.blast_furnace_smelt_progress dummy

# constants
scoreboard objectives add CONST dummy
scoreboard players set zero CONST 0
scoreboard players set one_hundred CONST 100

scoreboard objectives add guns.MAX_DISTANCE dummy
scoreboard objectives add guns.MAX_PIERCING dummy
scoreboard objectives add guns.COOLDOWN_TIME dummy
scoreboard objectives add guns.RELOAD_TIME dummy
scoreboard objectives add guns.MAX_AMMO dummy

scoreboard objectives add guns.SMELTING_TIME dummy

# config
function guns:config
