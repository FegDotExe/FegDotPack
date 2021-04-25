execute as @s run scoreboard players remove @s fegDsTimer 1

scoreboard players set @s feg20 20
scoreboard players operation @s fegDsDisSec = @s fegDsTimer
scoreboard players operation @s fegDsDisSec /= @s feg20

title @a actionbar {"score":{"name":"@e[type=armor_stand,name=\"fegDsCounter\",limit=1]","objective":"fegDsDisSec"}}
#TODO: score which makes this actionbar optional

execute as @e[type=player,limit=1,scores={fegDeathCount=1..}] at @s run function deathswap:died

execute as @s[scores={fegDsTimer=..0}] at @s run function deathswap:new_round