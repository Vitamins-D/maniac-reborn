scoreboard players set playing game 1

title @a[team=maniac] title "Убейте выживших"
title @a[team=survivors] title "Хакните все компы и убейте маньяка"

effect give @a[team=maniac] minecraft:resistance infinite 255
effect give @a[team=survivors] minecraft:speed 90 0
effect give @a minecraft:regeneration 2 255

function maniac:game/give_items
function maniac:game/hp_boost
function maniac:game/teleport_players

kill @e[type=minecraft:text_display,tag=hack1Eff]
kill @e[type=minecraft:text_display,tag=hack2Eff]
kill @e[type=minecraft:text_display,tag=hack3Eff]
kill @e[type=minecraft:text_display,tag=hack4Eff]
kill @e[type=minecraft:text_display,tag=hack5Eff]
kill @e[type=minecraft:text_display,tag=hack6Eff]
kill @e[type=minecraft:text_display,tag=hack7Eff]
kill @e[type=minecraft:text_display,tag=hack8Eff]
kill @e[type=minecraft:text_display,tag=hack9Eff]

function maniac:fnaf/fnaf_skulkclear
function maniac:mansion/mansion_skulkclear

function maniac:mansion/mansion_genspawn
function maniac:fnaf/fnaf_genspawn