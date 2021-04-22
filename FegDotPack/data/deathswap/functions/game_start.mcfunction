#Operazioni sulle scores
scoreboard players operation @s fegDsTimer = @s fegDsTimerS

gamemode survival @a
scoreboard players set @a fegDsInGame 1
execute as @s at @s run spreadplayers ~ ~ 1000 10000 false @e[type=player]

scoreboard players set @s fegDsStart 0
scoreboard players set @s fegDsGame 1