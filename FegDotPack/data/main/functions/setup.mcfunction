scoreboard objectives add fegActivate dummy
scoreboard objectives add fegActivated dummy

kill @e[type=armor_stand,name="fegCounter"]
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"fegCounter"}'}
execute as @e[type=armor_stand,name="fegCounter",limit=1] run forceload add ~ ~

tellraw @a ["","\nGreat. The basic pack is now all set.\nIn order to activate any module, use ",{"text":"/scoreboard players set @e[type=armor_stand,name=\"fegCounter\"] fegActivate <value>","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[type=armor_stand,name=\"fegCounter\"] fegActivate"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to get an example command","color":"green"}]}},"\n\nHere are the different values you can use:\n",{"text":"0","color":"gold"},": death-swap"]