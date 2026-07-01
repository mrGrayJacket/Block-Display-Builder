# the scales
# with collision
$scoreboard players set .scale bdb.bd_values $(scale_bd_values)
execute if score .scale bdb.bd_values matches ..61 run scoreboard players set .scale bdb.bd_values 62
execute if score .scale bdb.bd_values matches 3001.. run scoreboard players set .scale bdb.bd_values 3000

# without collision
$scoreboard players set .scale_x bdb.bd_values $(scale_x_bd_values)
$scoreboard players set .scale_y bdb.bd_values $(scale_y_bd_values)
$scoreboard players set .scale_z bdb.bd_values $(scale_z_bd_values)

# others
$scoreboard players set .teleport_duration bdb.bd_values $(teleport_duration_bd_values)
$scoreboard players set .view_range bdb.bd_values $(view_range_bd_values)

#showing the bd_values menu
function bdb:dynamic_menus/bd_values/pre_menu