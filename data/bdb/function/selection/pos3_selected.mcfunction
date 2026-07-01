#Clearing the hotbar
function bdb:hotbar/clear

#the forceload
execute as @e[type=marker,tag=pos3] at @s run forceload add ~3 ~3 ~-3 ~-3

# spawning the display.out
execute at @e[type=marker,tag=pos3] unless entity @e[type=block_display,tag=display.out] run function bdb:selection/display_out_spawn with storage bdb:area all.display.out

#giving the start Items
function bdb:hotbar/start_items

#the sound
function bdb:assets/sound
