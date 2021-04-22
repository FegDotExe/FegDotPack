#Assigns numerical id to players, randomly
scoreboard players set @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 0
execute as @e[type=player,scores={fegDsSwitched=0,fegDsInGame=1}] run scoreboard players add @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch 1

scoreboard players set @e[type=player,limit=1,sort=random,scores={fegDsSwitched=0,fegDsInGame=1}] fegDsSwitched 1
scoreboard players operation @e[type=player,scores={fegDsSwitched=1}] fegDsSwId = @e[type=armor_stand,name="fegDsCounter"] fegDsToSwitch
scoreboard players set @e[type=player,scores={fegDsSwitched=1}] fegDsSwitched 2

execute as @e[type=armor_stand,name="fegDsCounter",scores={fegDsToSwitch=2..}] run function deathswap:assign_id