scoreboard players set Game game 1
scoreboard players set playing game 0
scoreboard players set @a ManiacClass 0
scoreboard players set @a SurvivorClass 0
scoreboard players set @a hackOpened 0
maniacrev phase 0
maniacrev reset class @a

scoreboard players operation Time game = Game timerMax
execute unless entity @a[scores={maniacPick=0}] run scoreboard players set @a maniacPick 0
team join maniac @r[team=!maniac,scores={maniacPick=0}]
execute if score maniacCount game matches 2.. run team join maniac @r[distance=..100,team=!maniac,scores={maniacPick=0}]
execute if score maniacCount game matches 3.. run team join maniac @r[distance=..100,team=!maniac,scores={maniacPick=0}]
scoreboard players set @a rndClass 0
setblock -329 43 -79 minecraft:redstone_block destroy
team join survivors @a[team=!maniac]

gamemode adventure @a
clear @a

maniacrev reset_ready
give @a maniacrev:perk_token
give @a[team=maniac] maniacrev:maniac_selection
give @a[team=survivors] maniacrev:survivor_selection
give @a maniacrev:ready_item

# Компы
# function maniac:hacks/compdefault

effect clear @a
stopsound @a
effect give @a minecraft:regeneration 2 255 true

scoreboard players set @a weapon1 0
scoreboard players set @a weapon2 0
scoreboard players set @a weapon3 0
scoreboard players set @a ManiacClass 0
scoreboard players set @a SurvivorClass 0
scoreboard players set Game map 0
scoreboard players set @a[team=maniac] maniacPick 1
execute unless entity @a[scores={maniacPick=0}] run scoreboard players set @a maniacPick 0

effect give @a minecraft:speed infinite 3 true
effect give @a minecraft:resistance infinite 255 true

execute if score Game rndClass matches 1 run setblock -360 43 -90 minecraft:redstone_block destroy

tp @a[team=survivors] -379 63 27
tp @a[team=maniac] -340 44 48


execute if score Game map matches 4 run effect give @a[team=maniac,scores={ManiacClass=9}] minecraft:slowness infinite 0 true

maniacrev computer reset all

maniacrev agent_money set @a 0
maniacrev perks clear @a
maniacrev votemap
maniacrev nightmare clear_all