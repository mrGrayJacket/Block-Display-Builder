#summon the walker
execute at @e[type=marker,tag=pos1] run summon ender_pearl ~ ~ ~ {Tags:["walker","summon.in"],NoGravity:true}
execute at @e[type=marker,tag=pos3] run summon ender_pearl ~ ~ ~ {Tags:["walker","summon.out"],NoGravity:true}

#run the functions
function bdb:into_entity/without_translation/math
function bdb:into_entity/without_translation/process with storage bdb:area all
