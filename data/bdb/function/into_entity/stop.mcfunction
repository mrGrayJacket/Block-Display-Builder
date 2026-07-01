## reset every thing
#stop the functions and remove the walkers
schedule clear bdb:into_entity/with_translation/process_next
schedule clear bdb:into_entity/without_translation/process_next
kill @e[type=ender_pearl,tag=walker]

#removing the stop item
execute as @a[scores={bdb.player.in_process=1}] run function bdb:hotbar/remove_items

# clear the data
function bdb:into_entity/clear_data

#the sound
execute as @a[scores={bdb.player.in_process=1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 100 1.5

#giving the player the Items and resetting their scoreboard
execute as @a[scores={bdb.player.in_process=1}] run function bdb:hotbar/finish_items
