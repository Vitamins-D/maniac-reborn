execute if entity @a[team=survivors,gamemode=spectator] unless entity @a[team=survivors,gamemode=!spectator] if score Game game matches 1 run title @a title "Маньяк победил!"
execute if entity @a[team=maniac,gamemode=spectator] unless entity @a[team=maniac,gamemode=!spectator] if score Game game matches 1 run title @a title "Выжившие победили!"
execute if score @r PlayerLevel matches ..0 if score Game game matches 1 run title @a title "Маньяк победил!"

scoreboard players set Game game 0
team leave @a
scoreboard players reset Время
gamemode adventure @a
tp @a -378 43 -19
clear @a
effect clear @a
stopsound @a
playsound minecraft:music_disc.ward music @a -378 43 -19 999
effect give @a minecraft:resistance infinite 255
scoreboard players reset Генератор Complete
function maniac:classes/freddy/mishkagenclear
kill @e[type=minecraft:armor_stand,tag=CirclePart]
scoreboard players set Итого Complete 0