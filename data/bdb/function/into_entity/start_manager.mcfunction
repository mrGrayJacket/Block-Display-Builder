#clearing the hotbar
function bdb:hotbar/clear

#starting the process
execute if score .translation bdb.settings matches ..0 run function bdb:into_entity/without_translation/start
execute if score .translation bdb.settings matches 1.. run function bdb:into_entity/with_translation/start

#giving the stop Item
function bdb:hotbar/stop_items

#setting the scoreboard bdb.player.in_process to the player who did the process
scoreboard players set @s bdb.player.in_process 1

#the sound
function bdb:assets/sound
