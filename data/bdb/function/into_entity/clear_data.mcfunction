#scoreboards
scoreboard players reset * bdb.walker.location
scoreboard players reset .speed bdb.speedlimiter
scoreboard players reset * bdb.bossbar
scoreboard players reset * bdb.pos1
scoreboard players reset * bdb.pos2
scoreboard players reset * bdb.distance
scoreboard players reset * bdb.pdistance
scoreboard players reset * bdb.display.in.scale
scoreboard players reset * bdb.display.in.translation
scoreboard players reset * bdb.display.out.scale
scoreboard players reset * bdb.display.out.translation
scoreboard players reset * bdb.step
scoreboard players reset * bdb.nstep
scoreboard players reset * bdb.step_scaled
scoreboard players reset * bdb.nstep_scaled
scoreboard players reset * bdb.math


# bossbar
bossbar set progress max 100
bossbar set progress value 0
bossbar set progress players

# storage
data remove storage bdb:area all
data remove storage bdb:bd_values all
