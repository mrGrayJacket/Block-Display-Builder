scoreboard players add .speed bdb.speedlimiter 1
execute unless score .speed bdb.speedlimiter = .limit bdb.speedlimiter run function bdb:into_entity/with_translation/process with storage bdb:area all
execute if score .speed bdb.speedlimiter = .limit bdb.speedlimiter run schedule function bdb:into_entity/with_translation/process_next 1t replace
