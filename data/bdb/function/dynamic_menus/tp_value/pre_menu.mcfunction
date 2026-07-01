# getting the value
execute store result storage bdb:menu all.settings.tp_value int 1 run scoreboard players get .tp_value bdb.settings

# showing the menu
function bdb:dynamic_menus/tp_value/menu with storage bdb:menu all.settings
