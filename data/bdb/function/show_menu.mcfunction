# first time join to the world with this datapack
execute unless score .firstjoin bdb.join matches 1 run function bdb:first_join

#do the reset
function bdb:selection/reset

#enabling the trigger scoreboard and the trigger manager
function bdb:trigger_command/manager
function bdb:trigger_command/reset

#showing the dialog
dialog show @s bdb:main_menu
