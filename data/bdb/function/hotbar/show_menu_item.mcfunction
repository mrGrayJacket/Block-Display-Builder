clear @s minecraft:book[minecraft:custom_data~{show_menu:1b}]
tellraw @s {text:"Show menu item is given","color":"green",bold:1b}
give @s minecraft:book[minecraft:consumable={consume_seconds:1000000,"animation": "none","has_consume_particles": false},custom_name={"bold":true,"text":"Main Menu","color":"green"},lore=[{text:"[right_click]","color":"yellow"},{text:"Note: Restart the world if nothing happened",color:"red"},{text:"Get the book?: /function bdb:hotbar/show_menu_item",color:"gold"}],minecraft:custom_data={bdb.right_click:1b,show_menu:1b},enchantment_glint_override=1b] 1
