#clear the hotbar
function bdb:hotbar/clear

#adding a forceload
execute as @e[type=marker,tag=pos1] at @s run forceload add ~3 ~3 ~-3 ~-3
execute as @e[type=marker,tag=pos2] at @s run forceload add ~3 ~3 ~-3 ~-3

# calculating + adding a tag + spawning the display.in
function bdb:selection/display_data
execute at @e[type=marker,tag=pos1] unless entity @e[type=block_display,tag=display.in] run function bdb:selection/display_in_spawn with storage bdb:area all.display.in

# calculating the bossbar max
function bdb:selection/bossbar_data

#giving the pos3 items
function bdb:hotbar/pos3_items

#playing the sound
function bdb:assets/sound