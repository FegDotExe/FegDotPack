scoreboard players set @s fegDsInGame 0
gamemode spectator @s

scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsPlayers 0
execute as @e[type=player,scores={fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsPlayers 1

execute as @e[type=armor_stand,name="fegDsCounter",scores={fegDsPlayers=..1}] at @s run function deathswap:win