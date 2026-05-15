spawnpoint @a -378 43 -19 

execute if entity @a[team=survivors,gamemode=spectator] unless entity @a[team=survivors,gamemode=!spectator] if score Game game matches 1 run function maniac:game/win_maniac
execute if entity @a[team=maniac,gamemode=spectator] unless entity @a[team=maniac,gamemode=!spectator] if score Game game matches 1 run function maniac:game/win_survivors

maniacrev timer stop 
maniacrev phase 0
kill @e[tag=removeMe]
execute as @e[type=marker,tag=removeThis] at @s run setblock ~ ~ ~ air

scoreboard players set Game game 0
scoreboard players set playing game 0
team leave @a
scoreboard players reset Время
gamemode adventure @a
tp @a -378 43 -19
clear @a
effect clear @a
stopsound @a
playsound minecraft:music_disc.ward music @a -378 43 -19 999
effect give @a minecraft:resistance infinite 255
scoreboard players reset gen hack
kill @e[type=minecraft:armor_stand,tag=CirclePart]
scoreboard players set Итого Complete 0
maniacrev perks clear @a
maniacrev set_fleshheap @a 0
clearplaguedata
maniacrev addiction clear @a
maniacrev downed reset @a
maniacrev agent_money set @a 0
maniacrev bees kill @a

maniacrev settings
give @a maniacrev:shop_token
give @a maniacrev:pre_game_ready_item