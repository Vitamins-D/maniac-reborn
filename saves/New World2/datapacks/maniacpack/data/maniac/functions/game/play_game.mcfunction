scoreboard players set playing game 1

title @a[team=maniac] title "Убейте выживших"
title @a[team=survivors] title "Хакните все компы и убейте маньяка"

effect give @a[team=maniac] minecraft:resistance infinite 255
effect give @a[team=survivors] minecraft:speed 90 0
effect give @a minecraft:regeneration 2 255

function maniac:game/hp_boost
function maniac:game/teleport_players