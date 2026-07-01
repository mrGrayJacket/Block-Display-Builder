# storing the tags values to storage

function bdb:into_entity/without_translation/math_tick

# summon the block display

execute at @e[type=ender_pearl,tag=summon.in] unless block ~ ~ ~ air at @e[type=ender_pearl,tag=summon.out] run function bdb:into_entity/without_translation/bd with storage bdb:bd_values all
execute as @e[type=block_display,tag=bd,tag=!not_air_block] at @e[type=ender_pearl,tag=summon.in] run function bdb:into_entity/block/set_block

#tp on x

scoreboard players add .x bdb.walker.location 1
$execute as @e[type=ender_pearl,tag=summon.in] at @s run tp @s ~$(step_x) ~ ~
$execute as @e[type=ender_pearl,tag=summon.out] at @s run tp @s ~$(step_scaled_x) ~ ~

#tp on z

$execute as @e[type=ender_pearl,tag=summon.in] at @s if score .x bdb.walker.location = .x bdb.pdistance run tp @s ~$(nstep_x) ~ ~$(step_z)
$execute as @e[type=ender_pearl,tag=summon.out] at @s if score .x bdb.walker.location = .x bdb.pdistance run tp @s ~$(nstep_scaled_x) ~ ~$(step_scaled_z)
execute if score .x bdb.walker.location = .x bdb.pdistance run scoreboard players add .z bdb.walker.location 1
execute if score .x bdb.walker.location = .x bdb.pdistance run scoreboard players reset .x bdb.walker.location

#tp on y

$execute as @e[type=ender_pearl,tag=summon.in] at @s if score .z bdb.walker.location = .z bdb.pdistance run tp @s ~ ~$(step_y) ~$(nstep_z)
$execute as @e[type=ender_pearl,tag=summon.out] at @s if score .z bdb.walker.location = .z bdb.pdistance run tp @s ~ ~$(step_scaled_y) ~$(nstep_scaled_z)
execute if score .z bdb.walker.location = .z bdb.pdistance run scoreboard players add .y bdb.walker.location 1
execute if score .z bdb.walker.location = .z bdb.pdistance run scoreboard players reset .z bdb.walker.location


#stop the transformation to entity

execute if score .y bdb.walker.location = .y bdb.pdistance run return run function bdb:into_entity/stop

#recursive fixer

execute unless score .y bdb.walker.location = .y bdb.pdistance run function bdb:into_entity/without_translation/speedlimit
