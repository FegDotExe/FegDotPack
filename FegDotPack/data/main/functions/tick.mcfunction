#Id list
#0=deathswap
execute as @e[type=armor_stand,name="fegCounter",limit=1,scores={fegActivate=0}] run function deathswap:setup

execute as @e[type=armor_stand,name="fegCounter",limit=1,scores={fegActivated=0}] run function deathswap:tick