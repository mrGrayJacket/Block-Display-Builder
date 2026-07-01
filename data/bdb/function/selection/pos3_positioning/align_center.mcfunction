#align
execute unless predicate bdb:is_sneaking as @e[type=marker,tag=pos3] at @s align xyz run tp @s ~ ~ ~

#center
execute if predicate bdb:is_sneaking as @e[type=marker,tag=pos3] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
