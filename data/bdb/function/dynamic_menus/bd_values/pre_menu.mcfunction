#storing into a data storage
execute store result storage bdb:menu all.bd_values.scale int 1 run scoreboard players get .scale bdb.bd_values
execute store result storage bdb:menu all.bd_values.scale_x int 1 run scoreboard players get .scale_x bdb.bd_values
execute store result storage bdb:menu all.bd_values.scale_y int 1 run scoreboard players get .scale_y bdb.bd_values
execute store result storage bdb:menu all.bd_values.scale_z int 1 run scoreboard players get .scale_z bdb.bd_values

execute store result storage bdb:menu all.bd_values.teleport_duration int 1 run scoreboard players get .teleport_duration bdb.bd_values
execute store result storage bdb:menu all.bd_values.view_range int 1 run scoreboard players get .view_range bdb.bd_values

# showing the menu
function bdb:dynamic_menus/bd_values/menu with storage bdb:menu all.bd_values
