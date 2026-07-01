# storing the curent result of the settings scoreboard into a data storage
execute store result storage bdb:menu all.settings.translation int 1 run scoreboard players get .translation bdb.settings
execute store result storage bdb:menu all.settings.collision int 1 run scoreboard players get .collision bdb.settings
execute store result storage bdb:menu all.settings.give_book int 1 run scoreboard players get .give_book bdb.settings
execute store result storage bdb:menu all.settings.speed int 1 run scoreboard players get .limit bdb.speedlimiter
execute store result storage bdb:menu all.settings.tp_value int 1 run scoreboard players get .tp_value bdb.settings

#showing the setting menu
function bdb:dynamic_menus/settings/menu with storage bdb:menu all.settings
