#saving the data
data modify storage bdb:player_hotbar inventory set from entity @s Inventory
data modify storage bdb:player_hotbar hotbar set value []
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:0b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:1b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:2b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:3b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:4b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:5b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:6b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:7b}]
data modify storage bdb:player_hotbar hotbar append from storage bdb:player_hotbar inventory[{Slot:8b}]

#removing the inventory slot
data remove storage bdb:player_hotbar inventory

#giving air item to the indefined feilds
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:0b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:0b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:1b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:1b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:2b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:2b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:3b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:3b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:4b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:4b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:5b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:5b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:6b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:6b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:7b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:7b,count:1,id:"minecraft:air"}
execute unless data storage bdb:player_hotbar {hotbar:[{Slot:8b}]} run data modify storage bdb:player_hotbar hotbar append value {Slot:8b,count:1,id:"minecraft:air"}
