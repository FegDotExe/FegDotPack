#TODO: una score per il timer massimo, una per il minimo, una per il momentaneo e una per la diminuzione per round
scoreboard objectives add fegDsGame dummy
scoreboard objectives add fegDsTimer dummy
scoreboard objectives add fegDsTimerS dummy
scoreboard objectives add fegDsTimerMax dummy
scoreboard objectives add fegDsTimerMin dummy
scoreboard objectives add fegDsTimerSub dummy

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