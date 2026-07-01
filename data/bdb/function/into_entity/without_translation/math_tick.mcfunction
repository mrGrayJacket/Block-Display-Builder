####this function will run every tick or multiple times per tick while the process is runing

## storing the walker position in storage to give the block display its cordinates tags

execute store result storage bdb:bd_values all.layer_x int 1 run scoreboard players get .x bdb.walker.location
execute store result storage bdb:bd_values all.layer_y int 1 run scoreboard players get .y bdb.walker.location
execute store result storage bdb:bd_values all.layer_z int 1 run scoreboard players get .z bdb.walker.location

## progress value
scoreboard players add .value bdb.bossbar 1
execute store result bossbar progress value run scoreboard players get .value bdb.bossbar
