# adjusting the value
$scoreboard players set .tp_value bdb.settings $(tp_value_settings)
execute if score .tp_value bdb.settings matches ..0 run scoreboard players set .tp_value bdb.settings 1
execute if score .tp_value bdb.settings matches 101.. run scoreboard players set .tp_value bdb.settings 100
execute store result storage bdb:area all.tp_value float 0.01 run scoreboard players get .tp_value bdb.settings
