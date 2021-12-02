#Operazioni sulle scores
scoreboard players operation @s fegDsTimer = @s fegDsTimerS
scoreboard players operation @s fegDsTimerC = @s fegDsTimerS

time set day

gamemode survival @a
clear @a
effect give @a regeneration 1 255 true
effect give @a saturation 1 255 true
scoreboard players set @a fegDeathCount 0
scoreboard players set @a fegDsInGame 1
execute as @s at @s run spreadplayers ~ ~ 1000 10000 false @e[type=player]

scoreboard players set @s fegDsStart 0
scoreboard players set @s fegDsGame 1