#this function will run every tick
schedule function bdb:trigger_command/manager 1t

#starting the selection
execute as @a[scores={bdb.menu=1001}] run function bdb:selection/get_pos

#showing the settings menus
execute as @a[scores={bdb.menu=2001}] run function bdb:dynamic_menus/settings/pre_menu

#showing the block display values menues
execute as @a[scores={bdb.menu=3001}] run function bdb:dynamic_menus/bd_values/pre_menu
execute as @a[scores={bdb.menu=3002}] run function bdb:dynamic_menus/bd_values/reset_confirmation
execute as @a[scores={bdb.menu=3003}] run function bdb:dynamic_menus/bd_values/reset_yes

#reset
execute as @a run function bdb:trigger_command/reset

#####################################################################################

##? documentary of the trigger bdb.menu scoreboard
#? the number 1000 represent the select position functionalities
#? the number 2000 represent the setting menus (dialogs)
#? the number 3000 represent the bd_values menus (dialogs)

#? Note: any number added to those represent the number of pages for example:
#? if I want to show the settings menu I use 2001
#? if I want to show the without collision page in bd_values I use 3002