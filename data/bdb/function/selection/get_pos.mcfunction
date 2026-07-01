#clearing the book and saving the player hotbar
clear @s minecraft:book[minecraft:custom_data~{show_menu:1b}]
execute unless data storage bdb:player_hotbar hotbar run function bdb:hotbar/save

#reset the previous tasks and reset the hotbar
function bdb:selection/reset
function bdb:hotbar/clear

#the items
function bdb:hotbar/get_pos_items

#starting schedule functions
function bdb:selection/position_manager

#the sound
function bdb:assets/sound