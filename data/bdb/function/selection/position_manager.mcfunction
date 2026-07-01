#this is a tick function
schedule function bdb:selection/position_manager 1t

#detect all the markers
execute as @a[predicate=!bdb:has_pos3_spawner] if entity @e[type=marker,tag=pos1] if entity @e[type=marker,tag=pos2] unless entity @e[type=marker,tag=pos3] run function bdb:selection/pos1_and_pos2_selected
execute as @a[predicate=bdb:has_pos3_spawner] if entity @e[type=marker,tag=pos1] if entity @e[type=marker,tag=pos2] if entity @e[type=marker,tag=pos3] run function bdb:selection/pos3_selected
execute as @a[predicate=bdb:has_pos1_spawner] if entity @e[type=marker,tag=pos1] unless entity @e[type=marker,tag=pos2] unless entity @e[type=marker,tag=pos3] run function bdb:selection/pos1_selected
execute as @a[predicate=bdb:has_pos2_spawner] unless entity @e[type=marker,tag=pos1] if entity @e[type=marker,tag=pos2] unless entity @e[type=marker,tag=pos3] run function bdb:selection/pos2_selected

# tp the display out
function bdb:selection/pos3_positioning/display_out_tp

#summon a particle on markers position
execute as @e[type=marker] at @s run function bdb:particles
