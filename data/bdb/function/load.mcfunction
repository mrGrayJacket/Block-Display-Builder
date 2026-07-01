# scoreboards
scoreboard objectives add bdb.bd_values dummy
scoreboard objectives add bdb.settings dummy
scoreboard objectives add bdb.walker.location dummy
scoreboard objectives add bdb.math dummy
scoreboard objectives add bdb.join dummy
scoreboard objectives add bdb.speedlimiter dummy
scoreboard objectives add bdb.bossbar dummy
scoreboard objectives add bdb.menu trigger
scoreboard objectives add bdb.right_click_cooldown dummy
scoreboard objectives add bdb.player.in_process dummy
scoreboard objectives add bdb.count dummy
scoreboard objectives add bdb.right_click_continuous dummy

scoreboard objectives add bdb.pos1 dummy
scoreboard objectives add bdb.pos2 dummy
scoreboard objectives add bdb.distance dummy
scoreboard objectives add bdb.pdistance dummy
scoreboard objectives add bdb.display.in.scale dummy
scoreboard objectives add bdb.display.in.translation dummy
scoreboard objectives add bdb.display.out.scale dummy
scoreboard objectives add bdb.display.out.translation dummy

scoreboard objectives add bdb.step dummy
scoreboard objectives add bdb.nstep dummy
scoreboard objectives add bdb.step_scaled dummy
scoreboard objectives add bdb.nstep_scaled dummy

# bdb.bossbar
bossbar add progress {"text":"Progress","color":"gold"}
bossbar set progress visible true
bossbar set progress color yellow

#constant variables in data storage (losing them will make the dynamic menues infuctional)
data merge storage bdb:menu {all:{settings:{translation_settings:"$(translation_settings)",collision_settings:"$(collision_settings)",speed_settings:"$(speed_settings)",tp_value_settings:"$(tp_value_settings)",give_book_settings:"$(give_book_settings)"},bd_values:{scale_bd_values:"$(scale_bd_values)",scale_x_bd_values:"$(scale_x_bd_values)",scale_y_bd_values:"$(scale_y_bd_values)",scale_z_bd_values:"$(scale_z_bd_values)",teleport_duration_bd_values:"$(teleport_duration_bd_values)",view_range_bd_values:"$(view_range_bd_values)"}}}

#giving the main menu item
execute as @a run function bdb:selection/reset
execute as @a if score .give_book bdb.settings matches 1.. run function bdb:hotbar/show_menu_item
execute as @a if score .give_book bdb.settings matches 1.. run function bdb:assets/sound