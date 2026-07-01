#storing the scoreboard number Into a data storage
execute store result storage bdb:player_hotbar index.index byte 1 run scoreboard players get .index bdb.count

#runing the process2
function bdb:hotbar/load/load_process1 with storage bdb:player_hotbar index

#adding 1 to the index scoreboard
scoreboard players add .index bdb.count 1

#runing this function again until the scoreboard is on number 9
execute unless score .index bdb.count matches 9.. run return run function bdb:hotbar/load/load

#reset the scorebaord
scoreboard players reset .index bdb.count
data remove storage bdb:player_hotbar hotbar
data remove storage bdb:player_hotbar index
