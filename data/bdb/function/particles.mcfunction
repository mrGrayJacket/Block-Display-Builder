##all the particles shown in the markers     @s = marker from function bdb:selection/position_manager
execute as @s[tag=area,tag=!pos3] run particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~0.5 ~ 0 0 0 1 1
execute as @s[tag=pos3] run particle dust{color:1954309,scale:0.5} ~ ~ ~ 0 0 0 0 1
