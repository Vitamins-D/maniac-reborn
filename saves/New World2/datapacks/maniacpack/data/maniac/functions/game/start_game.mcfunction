scoreboard players set Game game 1
scoreboard players set @a ManiacClass 0
scoreboard players set @a SurvivorClass 0

scoreboard players operation Time game = Game timerMax
team join maniac @r[distance=..100,team=!maniac,scores={maniacPick=0}]
execute if score maniacCount game matches 2.. run team join maniac @r[distance=..100,team=!maniac,scores={maniacPick=0}]
execute if score maniacCount game matches 3.. run team join maniac @r[distance=..100,team=!maniac,scores={maniacPick=0}]
scoreboard players set @a rndClass 0
setblock -366 49 -19 minecraft:redstone_block destroy
setblock -329 43 -79 minecraft:redstone_block destroy
team join survivors @a[team=!maniac]
title @a[team=maniac] title "Убейте выживших"
title @a[team=survivors] title "Хакните все компы и убейте маньяка"
gamemode adventure @a
clear @a
setblock -298 52 -30 minecraft:redstone_block
setblock -298 52 -30 minecraft:air
setblock -291 52 -44 minecraft:redstone_block
setblock -291 52 -44 minecraft:air
effect clear @a
effect give @a[team=maniac] minecraft:resistance infinite 255
effect give @a[team=survivors] minecraft:speed 90 0
stopsound @a
setblock -366 41 32 minecraft:repeater[facing=south]
setblock -366 41 34 minecraft:repeater[facing=west]
effect give @a minecraft:regeneration 2 255
setblock -345 44 -22 minecraft:redstone_block
setblock -345 44 -22 minecraft:air


scoreboard players set @a[team=maniac] maniacPick 1
execute unless entity @a[scores={maniacPick=0}] run scoreboard players set @a maniacPick 0
setblock -290 52 -45 minecraft:redstone_block
setblock -290 52 -45 minecraft:air
effect give @a minecraft:dolphins_grace infinite 0
effect give @a minecraft:water_breathing infinite 0
function maniac:hacks/compdefault
kill @e[type=minecraft:area_effect_cloud,tag=hack1Eff]

execute if score Game rndClass matches 1 run setblock -360 43 -90 minecraft:redstone_block destroy