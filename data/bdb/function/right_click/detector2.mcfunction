scoreboard players remove @s bdb.right_click_cooldown 1
execute if score @s bdb.right_click_cooldown matches 1.. run return run advancement revoke @s only bdb:tick
scoreboard players reset @s bdb.right_click_cooldown
