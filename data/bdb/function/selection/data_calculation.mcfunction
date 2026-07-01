#? purpose of function
#? calculating the distance and it's positive


# gathering the positions data
#pos1 cordinate save

execute store result score .x bdb.pos1 run data get entity @e[tag=pos1,limit=1] Pos[0] 1000
execute store result score .y bdb.pos1 run data get entity @e[tag=pos1,limit=1] Pos[1] 1000
execute store result score .z bdb.pos1 run data get entity @e[tag=pos1,limit=1] Pos[2] 1000

#pos2 cordinate save

execute store result score .x bdb.pos2 run data get entity @e[tag=pos2,limit=1] Pos[0] 1000
execute store result score .y bdb.pos2 run data get entity @e[tag=pos2,limit=1] Pos[1] 1000
execute store result score .z bdb.pos2 run data get entity @e[tag=pos2,limit=1] Pos[2] 1000

#the distance = pos2

scoreboard players operation .x bdb.distance = .x bdb.pos2
scoreboard players operation .y bdb.distance = .y bdb.pos2
scoreboard players operation .z bdb.distance = .z bdb.pos2

#the difference between pos2 and pos1

scoreboard players operation .x bdb.distance -= .x bdb.pos1
scoreboard players operation .y bdb.distance -= .y bdb.pos1
scoreboard players operation .z bdb.distance -= .z bdb.pos1

# devide by 1000
scoreboard players set .devide bdb.math 1000
scoreboard players operation .x bdb.distance /= .devide bdb.math
scoreboard players operation .y bdb.distance /= .devide bdb.math
scoreboard players operation .z bdb.distance /= .devide bdb.math

# add/remove 100 to the distance depending on the axis (area adjustement reasons)

execute if score .x bdb.distance matches ..-1 run scoreboard players remove .x bdb.distance 1
execute if score .y bdb.distance matches ..-1 run scoreboard players remove .y bdb.distance 1
execute if score .z bdb.distance matches ..-1 run scoreboard players remove .z bdb.distance 1
execute if score .x bdb.distance matches 0.. run scoreboard players add .x bdb.distance 1
execute if score .y bdb.distance matches 0.. run scoreboard players add .y bdb.distance 1
execute if score .z bdb.distance matches 0.. run scoreboard players add .z bdb.distance 1

# making a positive only distance
scoreboard players operation .x bdb.pdistance = .x bdb.distance
scoreboard players operation .y bdb.pdistance = .y bdb.distance
scoreboard players operation .z bdb.pdistance = .z bdb.distance

# making it positive
scoreboard players set .multiply bdb.math -1
execute if score .x bdb.pdistance matches ..-1 run scoreboard players operation .x bdb.pdistance *= .multiply bdb.math
execute if score .y bdb.pdistance matches ..-1 run scoreboard players operation .y bdb.pdistance *= .multiply bdb.math
execute if score .z bdb.pdistance matches ..-1 run scoreboard players operation .z bdb.pdistance *= .multiply bdb.math

# storing the steps
execute if score .x bdb.distance matches ..-1 run scoreboard players set .x bdb.step -1
execute if score .y bdb.distance matches ..-1 run scoreboard players set .y bdb.step -1
execute if score .z bdb.distance matches ..-1 run scoreboard players set .z bdb.step -1

execute if score .x bdb.distance matches 0.. run scoreboard players set .x bdb.step 1
execute if score .y bdb.distance matches 0.. run scoreboard players set .y bdb.step 1
execute if score .z bdb.distance matches 0.. run scoreboard players set .z bdb.step 1

# nstep
scoreboard players operation .x bdb.nstep = .x bdb.distance
scoreboard players operation .z bdb.nstep = .z bdb.distance

# make it negative
scoreboard players set .multiply bdb.math -1
scoreboard players operation .x bdb.nstep *= .multiply bdb.math
scoreboard players operation .z bdb.nstep *= .multiply bdb.math

# unscaled steps
execute store result storage bdb:area all.step_x float 1 run scoreboard players get .x bdb.step
execute store result storage bdb:area all.step_y float 1 run scoreboard players get .y bdb.step
execute store result storage bdb:area all.step_z float 1 run scoreboard players get .z bdb.step

execute store result storage bdb:area all.nstep_x float 1 run scoreboard players get .x bdb.nstep
execute store result storage bdb:area all.nstep_z float 1 run scoreboard players get .z bdb.nstep

# storing the tp value in data storage
execute store result storage bdb:area all.tp_value float 0.01 run scoreboard players get .tp_value bdb.settings
