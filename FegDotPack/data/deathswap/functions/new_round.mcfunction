scoreboard players set @a[scores={fegDsInGame=1}] fegDsSwitched 0
scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 0
execute as @e[type=player,scores={fegDsSwitched=0,fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 1
execute as @e[type=armor_stand,name="fegDsCounter",scores={fegDsToSwitch=2..}] run function deathswap:assign_id

execute as @e[type=player,scores={fegDsInGame=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"fegDsPointer"}'}
execute as @e[type=armor_stand,name="fegDsPointer"] at @s rotated as @e[type=player,limit=1,sort=nearest] run teleport @s ~ ~ ~ ~ ~
execute as @e[type=player,scores={fegDsInGame=1}] at @s run scoreboard players operation @e[type=armor_stand,name="fegDsPointer",limit=1,sort=nearest] fegDsSwId = @s fegDsSwId

function deathswap:teleport_players

#Modify scores
    #TODO: test if score actually works
    scoreboard players operation @e[type=armor_stand,name="fegDsCounter"] fegDsTimerC += @e[type=armor_stand,name="fegDsCounter"] fegDsTimerSub
    execute as @e[type=armor_stand,name="fegDsCounter"] if score @s fegDsTimerC >= @s fegDsTimerMax unless score @s fegDsTimerMax matches 0 run scoreboard players operation @s fegDsTimerC = @s fegDsTimerMax
    execute as @e[type=armor_stand,name="fegDsCounter"] if score @s fegDsTimerC <= @s fegDsTimerMin unless score @s fegDsTimerMin matches 0 run scoreboard players operation @s fegDsTimerC = @s fegDsTimerMin
    scoreboard players operation @e[type=armor_stand,name="fegDsCounter"] fegDsTimer = @e[type=armor_stand,name="fegDsCounter"] fegDsTimerC

kill @e[type=armor_stand,name="fegDsPointer"]