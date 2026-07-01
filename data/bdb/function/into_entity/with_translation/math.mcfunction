#### this function will run only ones when the process starts

## store the block display values to a storage
execute store result storage bdb:bd_values all.scale_x float 0.001 run scoreboard players get .scale_x bdb.bd_values
execute store result storage bdb:bd_values all.scale_y float 0.001 run scoreboard players get .scale_y bdb.bd_values
execute store result storage bdb:bd_values all.scale_z float 0.001 run scoreboard players get .scale_z bdb.bd_values
execute store result storage bdb:bd_values all.scale float 0.001 run scoreboard players get .scale bdb.bd_values
execute store result storage bdb:bd_values all.teleport_duration byte 1 run scoreboard players get .teleport_duration bdb.bd_values
execute store result storage bdb:bd_values all.view_range float 0.01 run scoreboard players get .view_range bdb.bd_values


#show the bdb.bossbar to all players
bossbar set progress players @a
