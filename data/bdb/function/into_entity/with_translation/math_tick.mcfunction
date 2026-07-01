####this function will run every tick or multiple times per tick while the process is runing

## storing the walker position in storage to give the block display its cordinates tags

execute store result storage bdb:bd_values all.layer_x int 1 run scoreboard players get .x bdb.walker.location
execute store result storage bdb:bd_values all.layer_y int 1 run scoreboard players get .y bdb.walker.location
execute store result storage bdb:bd_values all.layer_z int 1 run scoreboard players get .z bdb.walker.location

## progress value
scoreboard players add .value bdb.bossbar 1
execute store result bossbar progress value run scoreboard players get .value bdb.bossbar

## translation
# storing the walker postition into a scoreboard

scoreboard players operation .translation_x bdb.bd_values = .x bdb.walker.location
scoreboard players operation .translation_y bdb.bd_values = .y bdb.walker.location
scoreboard players operation .translation_z bdb.bd_values = .z bdb.walker.location
scoreboard players operation .translation_adjust_x bdb.bd_values = .x bdb.walker.location
scoreboard players operation .translation_adjust_z bdb.bd_values = .z bdb.walker.location

# checking the bdb.distance and changing the value if it negative

scoreboard players set .multiply bdb.math -1
execute if score .x bdb.distance matches ..-1 run scoreboard players operation .translation_x bdb.bd_values *= .multiply bdb.math
execute if score .y bdb.distance matches ..-1 run scoreboard players operation .translation_y bdb.bd_values *= .multiply bdb.math
execute if score .z bdb.distance matches ..-1 run scoreboard players operation .translation_z bdb.bd_values *= .multiply bdb.math
execute if score .x bdb.distance matches ..-1 run scoreboard players operation .translation_adjust_x bdb.bd_values *= .multiply bdb.math
execute if score .z bdb.distance matches ..-1 run scoreboard players operation .translation_adjust_z bdb.bd_values *= .multiply bdb.math

# multiply the translation x and z by 10 and adding 5 to the translation

scoreboard players set .multiply bdb.math 10
scoreboard players operation .translation_adjust_x bdb.bd_values *= .multiply bdb.math
scoreboard players operation .translation_adjust_z bdb.bd_values *= .multiply bdb.math
scoreboard players remove .translation_adjust_x bdb.bd_values 5
scoreboard players remove .translation_adjust_z bdb.bd_values 5

## scale the translation values (remember that scale 1 block = 10000 in scoreboard)

#if colision is false
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_x bdb.bd_values *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_y bdb.bd_values *= .scale_y bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_z bdb.bd_values *= .scale_z bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_adjust_x bdb.bd_values *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_adjust_z bdb.bd_values *= .scale_z bdb.bd_values
#if colision is true
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_x bdb.bd_values *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_y bdb.bd_values *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_z bdb.bd_values *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_adjust_x bdb.bd_values *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_adjust_z bdb.bd_values *= .scale bdb.bd_values


# store the translation changes into storage
#store the normal translation
execute store result storage bdb:bd_values all.translation_x float 0.001 run scoreboard players get .translation_x bdb.bd_values
execute store result storage bdb:bd_values all.translation_y float 0.001 run scoreboard players get .translation_y bdb.bd_values
execute store result storage bdb:bd_values all.translation_z float 0.001 run scoreboard players get .translation_z bdb.bd_values
#store the adjusted translation
execute store result storage bdb:bd_values all.translation_adjust_x float 0.0001 run scoreboard players get .translation_adjust_x bdb.bd_values
execute store result storage bdb:bd_values all.translation_adjust_z float 0.0001 run scoreboard players get .translation_adjust_z bdb.bd_values
