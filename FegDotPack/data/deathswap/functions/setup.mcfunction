#TODO: una score per il timer massimo, una per il minimo, una per il momentaneo e una per la diminuzione per round
scoreboard objectives add fegDsStart dummy
scoreboard objectives add fegDsGame dummy
#1 Means the game is on
scoreboard objectives add fegDsInGame dummy
#Determines if a player is still playing
scoreboard objectives add fegDsRound dummy
scoreboard objectives add fegDsTimer dummy
#Main game timer
scoreboard objectives add fegDsTimerS dummy
#Standard time value
scoreboard objectives add fegDsTimerC dummy
#Cumulative time value for rounds
scoreboard objectives add fegDsTimerMax dummy
scoreboard objectives add fegDsTimerMin dummy
scoreboard objectives add fegDsTimerSub dummy
#Amount of time added each round. Might be negative as well
scoreboard objectives add fegDsDisSec dummy
#Seconds displayer
scoreboard objectives add feg20 dummy
#Fixed 20
scoreboard objectives add fegDsPlayers dummy
#Amount of players
scoreboard objectives add fegDsToSwitch dummy
#Amount of players to be switched (whose fegDsSwitched is 0)
scoreboard objectives add fegDsSwitched dummy
#Is 1 for players who have been switched. Is 0 for players who have not.//For armor stands, this is used as a prov score in teleport_players
scoreboard objectives add fegDsSwId dummy
#An id which differentiates each player
scoreboard objectives add fegDeathCount deathCount
#Well yeah a death counter

#Resettaggio preventivo delle scores di attivazione
#Tenere presente che @s si riferisce a fegCounter che esegue la cosa
#FIXME: non è detto che uno voglia attivare la cosa e anche mettere su le scores. Bisognerebbe mettere qualcosa che lo faccia solo la prima volta
scoreboard players reset @s fegActivate
scoreboard players set @s fegActivated 0

kill @e[type=armor_stand,name="fegDsCounter"]
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"fegDsCounter"}'}
execute as @e[type=armor_stand,name="fegDsCounter"] run forceload add ~ ~

#settaggio delle scores
    scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsTimerS 6000
    scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsTimerMax 6000
    scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsTimerMin 6000
    scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsTimerSub 0

#TODO: aggiungere un messaggio finale