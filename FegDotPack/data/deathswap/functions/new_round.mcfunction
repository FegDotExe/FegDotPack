#TODO: Switch players->probably need a new function
scoreboard players set @a[scores={fegDsInGame=1}] fegDsSwitched 0
scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 0
execute as @e[type=player,scores={fegDsSwitched=0,fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 1
execute as @e[type=armor_stand,name="fegDsCounter",scores={fegDsToSwitch=2..}] run function deathswap:assign_id

execute as @e[type=player,scores={fegDsInGame=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"fegDsPointer"}'}
execute as @e[type=player,scores={fegDsInGame=1}] at @s run scoreboard players operation @e[type=armor_stand,name="fegDsPointer",limit=1,sort=nearest] fegDsSwId = @s fegDsSwId

function deathswap:teleport_players

#TODO: Modify scores

scoreboard players operation @e[type=armor_stand,name="fegDsCounter"] fegDsTimer = @e[type=armor_stand,name="fegDsCounter"] fegDsTimerS
kill @e[type=armor_stand,name="fegDsPointer"]