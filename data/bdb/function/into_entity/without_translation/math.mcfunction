#### this function will run only ones when the process starts

##store the block display values to a storage

execute store result storage bdb:bd_values all.scale_x float 0.001 run scoreboard players get .scale_x bdb.bd_values
execute store result storage bdb:bd_values all.scale_y float 0.001 run scoreboard players get .scale_y bdb.bd_values
execute store result storage bdb:bd_values all.scale_z float 0.001 run scoreboard players get .scale_z bdb.bd_values
execute store result storage bdb:bd_values all.scale float 0.001 run scoreboard players get .scale bdb.bd_values
execute store result storage bdb:bd_values all.teleport_duration byte 1 run scoreboard players get .teleport_duration bdb.bd_values
execute store result storage bdb:bd_values all.view_range float 0.01 run scoreboard players get .view_range bdb.bd_values


#show the bdb.bossbar to all players
bossbar set progress players @a

## bdb.step scaled
#store the bdb.step to other scoreboard

scoreboard players operation .x bdb.step_scaled = .x bdb.step 
scoreboard players operation .y bdb.step_scaled = .y bdb.step
scoreboard players operation .z bdb.step_scaled = .z bdb.step

#store the bdb.distance to other scoreboards

scoreboard players operation .x bdb.nstep_scaled = .x bdb.nstep
scoreboard players operation .z bdb.nstep_scaled = .z bdb.nstep


#set the adjustment values to 5

scoreboard players set .translation_adjust_x bdb.bd_values -5
scoreboard players set .translation_adjust_z bdb.bd_values -5

## adjust the scale
#without collision
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .x bdb.step_scaled *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .x bdb.nstep_scaled *= .scale_x bdb.bd_values

execute if score .collision bdb.settings matches ..0 run scoreboard players operation .y bdb.step_scaled *= .scale_y bdb.bd_values

execute if score .collision bdb.settings matches ..0 run scoreboard players operation .z bdb.step_scaled *= .scale_z bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .z bdb.nstep_scaled *= .scale_z bdb.bd_values
#with collision
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .x bdb.step_scaled *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .x bdb.nstep_scaled *= .scale bdb.bd_values

execute if score .collision bdb.settings matches 1.. run scoreboard players operation .y bdb.step_scaled *= .scale bdb.bd_values

execute if score .collision bdb.settings matches 1.. run scoreboard players operation .z bdb.step_scaled *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .z bdb.nstep_scaled *= .scale bdb.bd_values

# scale the adjustement
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_adjust_x bdb.bd_values *= .scale bdb.bd_values
execute if score .collision bdb.settings matches 1.. run scoreboard players operation .translation_adjust_z bdb.bd_values *= .scale bdb.bd_values

execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_adjust_x bdb.bd_values *= .scale_x bdb.bd_values
execute if score .collision bdb.settings matches ..0 run scoreboard players operation .translation_adjust_z bdb.bd_values *= .scale_z bdb.bd_values

## store to storage
# scaled steps
execute store result storage bdb:area all.step_scaled_x float 0.001 run scoreboard players get .x bdb.step_scaled
execute store result storage bdb:area all.step_scaled_y float 0.001 run scoreboard players get .y bdb.step_scaled
execute store result storage bdb:area all.step_scaled_z float 0.001 run scoreboard players get .z bdb.step_scaled

execute store result storage bdb:area all.nstep_scaled_x float 0.001 run scoreboard players get .x bdb.nstep_scaled
execute store result storage bdb:area all.nstep_scaled_z float 0.001 run scoreboard players get .z bdb.nstep_scaled

#the adjustement
execute store result storage bdb:bd_values all.translation_adjust_x float 0.0001 run scoreboard players get .translation_adjust_x bdb.bd_values
execute store result storage bdb:bd_values all.translation_adjust_z float 0.0001 run scoreboard players get .translation_adjust_z bdb.bd_values
