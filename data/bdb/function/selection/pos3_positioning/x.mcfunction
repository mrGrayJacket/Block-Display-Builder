$execute unless predicate bdb:is_sneaking as @e[type=marker,tag=pos3] at @s run tp @s ~$(tp_value) ~ ~
$execute if predicate bdb:is_sneaking as @e[type=marker,tag=pos3] at @s run tp @s ~-$(tp_value) ~ ~
