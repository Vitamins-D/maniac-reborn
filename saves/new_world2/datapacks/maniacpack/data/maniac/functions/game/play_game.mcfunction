scoreboard players set playing game 1

clear @a
maniacrev perks close @a

effect clear @a
maniacrev phase 1

effect give @a minecraft:dolphins_grace infinite 0 true
effect give @a minecraft:water_breathing infinite 0 true
effect give @a minecraft:saturation infinite 255 true

title @a[team=maniac] title "Убейте выживших"
title @a[team=survivors] title "Хакните все компы и убейте маньяка"

effect give @a[team=maniac] minecraft:resistance infinite 255 true
effect give @a[team=survivors] minecraft:speed 90 0 true
effect give @a minecraft:regeneration 2 255 true

function maniac:game/give_items
function maniac:game/hp_boost
function maniac:game/teleport_players

function maniac:game/spawn_markers
clearsalt

kill @e[type=minecraft:text_display,tag=hack1Eff]
kill @e[type=minecraft:text_display,tag=hack2Eff]
kill @e[type=minecraft:text_display,tag=hack3Eff]
kill @e[type=minecraft:text_display,tag=hack4Eff]
kill @e[type=minecraft:text_display,tag=hack5Eff]
kill @e[type=minecraft:text_display,tag=hack6Eff]
kill @e[type=minecraft:text_display,tag=hack7Eff]
kill @e[type=minecraft:text_display,tag=hack8Eff]
kill @e[type=minecraft:text_display,tag=hack9Eff]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:zombie_villager]
maniacrev totem killall
kill @e[tag=removeMe]

function maniac:fnaf/fnaf_skulkclear
function maniac:mansion/mansion_skulkclear

#execute at @e[type=marker,tag=hackSpawn] run setblock ~ ~ ~ minecraft:stone_pressure_plate
#function maniac:mansion/mansion_genspawn
#function maniac:fnaf/fnaf_genspawn

execute as @e[type=marker,tag=removeThis] at @s run setblock ~ ~ ~ air

function maniac:classes/freddy/mishkagenspawn

execute if entity @a[team=survivors,scores={SurvivorClass=6}] as @e[type=marker,tag=brewSpawn] at @s run setblock ~ ~ ~ brewing_stand
#execute if entity @a[team=survivors,scores={SurvivorClass=6}] at @e[type=marker,tag=brewSpawn] run summon block_display ~-0.5 ~ ~-0.5 {Tags:["removeMe"],block_state:{Name:"minecraft:brewing_stand"},Glowing:1b,glow_color_override:11141290}
execute if entity @a[team=survivors,scores={SurvivorClass=6}] at @e[type=marker,tag=brewSpawn] run summon block_display ~-0.5 ~ ~-0.5 {Tags:["removeMe", "brewDisplay"],block_state:{Name:"minecraft:brewing_stand"},transformation:{scale:[0.0f,0.0f,0.0f]},glow_color_override:11141290}
testglow @e[type=block_display,tag=brewDisplay] 600 @a[team=survivors,scores={SurvivorClass=6}]

execute at @e[type=marker,tag=hackSpawn] run summon block_display ~-0.5 ~-0.1 ~-0.5 {Tags:["removeMe","hackDisplay"],block_state:{Name:"minecraft:stone_pressure_plate"},brightness:{sky:15,block:15},Team:"Computers",transformation:{scale:[0.0f,0.0f,0.0f]},glow_color_override:65280}
testglow @e[type=block_display,tag=hackDisplay] 40 @a[team=survivors]

execute at @e[type=marker,tag=hackSpawn] run summon block_display ~-0.5 ~-0.1 ~-0.5 {Tags:["removeMe","hackDisplayManiac"],block_state:{Name:"minecraft:stone_pressure_plate"},brightness:{sky:15,block:15},Team:"Computers",transformation:{scale:[0.0f,0.0f,0.0f]},glow_color_override:65280}
testglow @e[type=block_display,tag=hackDisplayManiac] 600 @a[team=maniac]

execute as @a run maniacrev mana set 100
maniacrev mana regen disable
maniacrev dodepovich reset_all @a

maniacrev start
maniacrev timer start
maniacrev hp_boost