#summon the walker
execute at @e[type=marker,tag=pos1] run summon ender_pearl ~ ~ ~ {Tags:["walker","summon.in"],NoGravity:true}

#run the functions
function bdb:into_entity/with_translation/math
function bdb:into_entity/with_translation/process with storage bdb:area all
