##? prepare the scale and translation for the display
#? distance and pdistance is aproximated with 1
#? bdb.display.in.scale = distance + 0.02 (positive)
#? bdb.display.in.translation = depend on the adjustement
#? according to this calculations the largest distance with the maximum scale possible is 999*999*999 (I hope so)

# calculating the distance is required
function bdb:selection/data_calculation

## display.in data
# scale
scoreboard players operation .x bdb.display.in.scale = .x bdb.pdistance
scoreboard players operation .y bdb.display.in.scale = .y bdb.pdistance
scoreboard players operation .z bdb.display.in.scale = .z bdb.pdistance

# multiply the scale
scoreboard players set .multiply bdb.math 1000
scoreboard players operation .x bdb.display.in.scale *= .multiply bdb.math
scoreboard players operation .y bdb.display.in.scale *= .multiply bdb.math
scoreboard players operation .z bdb.display.in.scale *= .multiply bdb.math

# adding 2 to fix z-fighting
scoreboard players add .x bdb.display.in.scale 2
scoreboard players add .y bdb.display.in.scale 2
scoreboard players add .z bdb.display.in.scale 2

# storing in data storage
execute store result storage bdb:area all.display.in.scale_x float 0.001 run scoreboard players get .x bdb.display.in.scale
execute store result storage bdb:area all.display.in.scale_y float 0.001 run scoreboard players get .y bdb.display.in.scale
execute store result storage bdb:area all.display.in.scale_z float 0.001 run scoreboard players get .z bdb.display.in.scale

# translation
# adding the distance
execute if score .x bdb.distance matches ..-1 run scoreboard players operation .x bdb.display.in.translation = .x bdb.distance
execute if score .y bdb.distance matches ..-1 run scoreboard players operation .y bdb.display.in.translation = .y bdb.distance
execute if score .z bdb.distance matches ..-1 run scoreboard players operation .z bdb.display.in.translation = .z bdb.distance

# multiply by 1000
scoreboard players set .multiply bdb.math 1000
scoreboard players operation .x bdb.display.in.translation *= .multiply bdb.math
scoreboard players operation .y bdb.display.in.translation *= .multiply bdb.math
scoreboard players operation .z bdb.display.in.translation *= .multiply bdb.math

# set to 499 and -1 to y
scoreboard players add .x bdb.display.in.translation 499
scoreboard players remove .y bdb.display.in.translation 1
scoreboard players add .z bdb.display.in.translation 499

# set to the correct translation if positive
execute if score .x bdb.distance matches 0.. run scoreboard players set .x bdb.display.in.translation -501
execute if score .y bdb.distance matches 0.. run scoreboard players set .y bdb.display.in.translation -1
execute if score .z bdb.distance matches 0.. run scoreboard players set .z bdb.display.in.translation -501

# storing in data storage
execute store result storage bdb:area all.display.in.translation_x float 0.001 run scoreboard players get .x bdb.display.in.translation
execute store result storage bdb:area all.display.in.translation_y float 0.001 run scoreboard players get .y bdb.display.in.translation
execute store result storage bdb:area all.display.in.translation_z float 0.001 run scoreboard players get .z bdb.display.in.translation

## display.out data
## scale
scoreboard players operation .x bdb.display.out.scale = .x bdb.pdistance
scoreboard players operation .y bdb.display.out.scale = .y bdb.pdistance
scoreboard players operation .z bdb.display.out.scale = .z bdb.pdistance

# scaling it if collision enabled
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .x bdb.display.out.scale *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .y bdb.display.out.scale *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .z bdb.display.out.scale *= .scale bdb.bd_values

# scaling it if collision disabled
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .x bdb.display.out.scale *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .y bdb.display.out.scale *= .scale_y bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .z bdb.display.out.scale *= .scale_z bdb.bd_values

# adding 2 to fix z-fighting
scoreboard players add .x bdb.display.out.scale 2
scoreboard players add .y bdb.display.out.scale 2
scoreboard players add .z bdb.display.out.scale 2

# storing in data storage
execute store result storage bdb:area all.display.out.scale_x float 0.001 run scoreboard players get .x bdb.display.out.scale
execute store result storage bdb:area all.display.out.scale_y float 0.001 run scoreboard players get .y bdb.display.out.scale
execute store result storage bdb:area all.display.out.scale_z float 0.001 run scoreboard players get .z bdb.display.out.scale

## translation
# adding the distance
execute if score .x bdb.distance matches ..-1 run scoreboard players operation .x bdb.display.out.translation = .x bdb.distance
execute if score .y bdb.distance matches ..-1 run scoreboard players operation .y bdb.display.out.translation = .y bdb.distance
execute if score .z bdb.distance matches ..-1 run scoreboard players operation .z bdb.display.out.translation = .z bdb.distance

# add 499 to xz and -1 to y
scoreboard players set .var_x bdb.math 499
scoreboard players set .var_y bdb.math -1
scoreboard players set .var_z bdb.math 499

# set to the correct translation if positive
execute if score .x bdb.distance matches 0.. run scoreboard players set .var_x bdb.math -501
execute if score .y bdb.distance matches 0.. run scoreboard players set .var_y bdb.math -1
execute if score .z bdb.distance matches 0.. run scoreboard players set .var_z bdb.math -501

# scaling it if collision enabled
#from distance
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .x bdb.display.out.translation *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .y bdb.display.out.translation *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .z bdb.display.out.translation *= .scale bdb.bd_values

#from constant
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .var_x bdb.math *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .var_y bdb.math *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .var_z bdb.math *= .scale bdb.bd_values

# scaling it if collision disabled
#from distance
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .x bdb.display.out.translation *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .y bdb.display.out.translation *= .scale_y bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .z bdb.display.out.translation *= .scale_z bdb.bd_values

#from constant
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .var_x bdb.math *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .var_y bdb.math *= .scale_y bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .var_z bdb.math *= .scale_z bdb.bd_values

# deviding the contant
scoreboard players set .devide bdb.math 1000
scoreboard players operation .var_x bdb.math /= .devide bdb.math
scoreboard players operation .var_y bdb.math /= .devide bdb.math
scoreboard players operation .var_z bdb.math /= .devide bdb.math

# adding the scaled numbers together if distance negative
execute if score .x bdb.distance matches ..-1 run scoreboard players operation .x bdb.display.out.translation += .var_x bdb.math
execute if score .y bdb.distance matches ..-1 run scoreboard players operation .y bdb.display.out.translation += .var_y bdb.math
execute if score .z bdb.distance matches ..-1 run scoreboard players operation .z bdb.display.out.translation += .var_z bdb.math

# set to the correct translation if positive
execute if score .x bdb.distance matches 0.. run scoreboard players operation .x bdb.display.out.translation = .var_x bdb.math
execute if score .y bdb.distance matches 0.. run scoreboard players operation .y bdb.display.out.translation = .var_y bdb.math
execute if score .z bdb.distance matches 0.. run scoreboard players operation .z bdb.display.out.translation = .var_z bdb.math

# storing in data storage
execute store result storage bdb:area all.display.out.translation_x float 0.001 run scoreboard players get .x bdb.display.out.translation
execute store result storage bdb:area all.display.out.translation_y float 0.001 run scoreboard players get .y bdb.display.out.translation
execute store result storage bdb:area all.display.out.translation_z float 0.001 run scoreboard players get .z bdb.display.out.translation
