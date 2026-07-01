execute if entity @s[advancements={bdb:right_click_continuous=false}] run return 0
scoreboard players remove @s bdb.right_click_continuous 1
execute if score @s bdb.right_click_continuous matches 1.. run return run advancement revoke @s only bdb:continuous_tick
scoreboard players reset @s bdb.right_click_continuous
advancement revoke @s only bdb:right_click_continuous