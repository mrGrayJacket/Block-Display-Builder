##========= this function uses the block state loot table by Triton365 =======

## Change block display to block
loot spawn ~ ~ ~ loot blockstate:get
data modify entity @s block_state set from entity @n[type=item] Item.components."minecraft:custom_data"
kill @n[type=item]

## Water and lava
execute if block ~ ~ ~ water run data merge entity @s {block_state:{Name:"minecraft:blue_stained_glass"},brightness:{sky:10,block:15}}
execute if block ~ ~ ~ lava run data merge entity @s {block_state:{Name:"minecraft:resin_block"},brightness:{sky:10,block:15}}

## water logged blocks:
# without translation
execute if predicate bdb:water_check unless block ~ ~ ~ water if score .translation bdb.settings matches ..0 run function bdb:into_entity/block/set_water/without_translation with storage bdb:bd_values all
# with translation
execute if predicate bdb:water_check unless block ~ ~ ~ water if score .translation bdb.settings matches 1.. run function bdb:into_entity/block/set_water/with_translation with storage bdb:bd_values all

## adding the tag to end the modification
tag @s add not_air_block
