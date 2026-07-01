execute unless score @s bdb.right_click_cooldown matches 1.. run function bdb:right_click/right_click_once
advancement revoke @s only bdb:right_click
advancement revoke @s only bdb:tick
scoreboard players set @s bdb.right_click_cooldown 2