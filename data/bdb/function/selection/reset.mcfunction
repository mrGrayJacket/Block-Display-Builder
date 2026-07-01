#stop schedule functions and remove all the entities used
schedule clear bdb:selection/position_manager
schedule clear bdb:trigger_command/manager
kill @e[tag=area]
kill @e[type=ender_pearl,tag=walker]

#removing the forceload
forceload remove all

#clear all the items
function bdb:hotbar/remove_items

#clear scoreboards
function bdb:into_entity/clear_data
