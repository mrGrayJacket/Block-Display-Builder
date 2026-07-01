## progress set max
#set the scoreboard to 1 to do the bdb.math
scoreboard players set .max bdb.bossbar 1

#calculate the volume and store it in the .max bdb.bossbar scoreboard
scoreboard players operation .max bdb.bossbar *= .x bdb.pdistance
scoreboard players operation .max bdb.bossbar *= .z bdb.pdistance
scoreboard players operation .max bdb.bossbar *= .y bdb.pdistance

#store the result in the bdb.bossbar max
execute store result bossbar progress max run scoreboard players get .max bdb.bossbar
