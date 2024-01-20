# time (in ticks; 1s = 20t)
# distance (in half-blocks; 1m = 2hb)
# recoil (degrees)


# processing machines
scoreboard players set blast_furnace guns.PROCESSING_TIME 100
scoreboard players set polymerizator guns.PROCESSING_TIME 200

# guns
# P.S. damage is modified in the "shoot_loop.mcfunction" file for each weapon

# desert_eagle
scoreboard players set desert_eagle guns.MAX_DISTANCE 100
scoreboard players set desert_eagle guns.COOLDOWN_TIME 20
scoreboard players set desert_eagle guns.RELOAD_TIME 40
scoreboard players set desert_eagle guns.MAX_PIERCING 1
scoreboard players set desert_eagle guns.MAX_AMMO 7
scoreboard players set desert_eagle guns.RECOIL 8

# glock_23
scoreboard players set glock_23 guns.MAX_DISTANCE 100
scoreboard players set glock_23 guns.COOLDOWN_TIME 8
scoreboard players set glock_23 guns.RELOAD_TIME 30
scoreboard players set glock_23 guns.MAX_PIERCING 1
scoreboard players set glock_23 guns.MAX_AMMO 17
scoreboard players set glock_23 guns.RECOIL 3

# l96a1
scoreboard players set l96a1 guns.MAX_DISTANCE 200
scoreboard players set l96a1 guns.COOLDOWN_TIME 45
scoreboard players set l96a1 guns.RELOAD_TIME 65
scoreboard players set l96a1 guns.MAX_PIERCING 3
scoreboard players set l96a1 guns.MAX_AMMO 10
scoreboard players set l96a1 guns.RECOIL 20

# mosin
scoreboard players set mosin guns.MAX_DISTANCE 200
scoreboard players set mosin guns.COOLDOWN_TIME 35
scoreboard players set mosin guns.RELOAD_TIME 80
scoreboard players set mosin guns.MAX_PIERCING 2
scoreboard players set mosin guns.MAX_AMMO 5
scoreboard players set mosin guns.RECOIL 20
