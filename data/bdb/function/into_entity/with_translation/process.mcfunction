##========= this function by a youtuber called GoldenRobot II and I heavly modify it (same concept and lines but modifyed to function at any selected area rather than just 16x16x16)


# storing the translation values and the tags values to storage

function bdb:into_entity/with_translation/math_tick

# summon the block display

execute at @e[type=ender_pearl,tag=summon.in] unless block ~ ~ ~ air at @e[type=marker,tag=pos3] run function bdb:into_entity/with_translation/bd with storage bdb:bd_values all
execute as @e[type=block_display,tag=bd,tag=!not_air_block] at @e[type=ender_pearl,tag=summon.in] run function bdb:into_entity/block/set_block

#tp on x

scoreboard players add .x bdb.walker.location 1
$execute as @e[type=ender_pearl,tag=summon.in] at @s run tp @s ~$(step_x) ~ ~

#tp on z

$execute as @e[type=ender_pearl,tag=summon.in] at @s if score .x bdb.walker.location = .x bdb.pdistance run tp @s ~$(nstep_x) ~ ~$(step_z)
execute if score .x bdb.walker.location = .x bdb.pdistance run scoreboard players add .z bdb.walker.location 1
execute if score .x bdb.walker.location = .x bdb.pdistance run scoreboard players reset .x bdb.walker.location

#tp on y

$execute as @e[type=ender_pearl,tag=summon.in] at @s if score .z bdb.walker.location = .z bdb.pdistance run tp @s ~ ~$(step_y) ~$(nstep_z)
execute if score .z bdb.walker.location = .z bdb.pdistance run scoreboard players add .y bdb.walker.location 1
execute if score .z bdb.walker.location = .z bdb.pdistance run scoreboard players reset .z bdb.walker.location

#stop the transformation to entity

execute if score .y bdb.walker.location = .y bdb.pdistance run return run function bdb:into_entity/stop

#frames

execute unless score .y bdb.walker.location = .y bdb.pdistance run function bdb:into_entity/with_translation/speedlimit