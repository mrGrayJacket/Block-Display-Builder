$tag @e[tag=bd] add $(tag)
$tag @e[tag=$(tag)] remove bd
$tellraw @a [{text:"tag changed to ",color:"green"},{text:"\"$(tag)\"",color:"blue",bold:1b}]