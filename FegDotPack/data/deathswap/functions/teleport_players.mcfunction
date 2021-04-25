scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 0
execute as @e[type=player,scores={fegDsSwitched=2,fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 1
scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsPlayers 0
execute as @e[type=player,scores={fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsPlayers 1
execute as @e[type=armor_stand,name="fegDsPointer"] run scoreboard players operation @s fegDsSwitched = @s fegDsSwId
scoreboard players remove @e[type=armor_stand,name="fegDsPointer"] fegDsSwitched 1
scoreboard players operation @e[type=armor_stand,name="fegDsPointer",scores={fegDsSwitched=0}] fegDsSwitched = @e[type=armor_stand,name="fegDsCounter"] fegDsPlayers

scoreboard players set @e[type=player,limit=1,sort=random,scores={fegDsSwitched=2,fegDsInGame=1}] fegDsSwitched 3

execute as @e[type=player,scores={fegDsSwitched=3,fegDsInGame=1}] run scoreboard players operation @e[type=armor_stand,name="fegDsPointer"] fegDsSwitched -= @s fegDsSwId
execute as @e[type=player,scores={fegDsSwitched=3,fegDsInGame=1}] rotated as @e[type=armor_stand,name="fegDsPointer",limit=1,scores={fegDsSwitched=0}] run teleport @s @e[type=armor_stand,name="fegDsPointer",limit=1,scores={fegDsSwitched=0}]

scoreboard players set @e[type=player,scores={fegDsSwitched=3,fegDsInGame=1}] fegDsSwitched 4
execute as @e[type=armor_stand,name="fegDsCounter",scores={fegDsToSwitch=2..}] run function deathswap:teleport_players