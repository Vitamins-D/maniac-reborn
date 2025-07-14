execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run function maniac:start_game
execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run data remove entity @s interaction




# ===========================================
# ОБРАБОТКА КЛИКОВ БАБКА ГРЕННИ
# ===========================================
execute as @e[tag=select_class] on target run scoreboard players set @s ManiacClass 1
execute as @e[tag=select_class] on target run tellraw @s "Вы выбрали Бабку Гренни"
execute as @e[tag=select_class] run data remove entity @s interaction


execute as @e[tag=to_items] on target run function maniac:menu/maniac_classes/display_class_items_grenny
execute as @e[tag=to_items] run data remove entity @s interaction

execute as @e[tag=to_main] on target run function maniac:menu/maniac_classes/display_class_main_grenny
execute as @e[tag=to_main] run data remove entity @s interaction

execute as @e[tag=to_abilities] on target run function maniac:menu/maniac_classes/display_class_abilities_grenny
execute as @e[tag=to_abilities] run data remove entity @s interaction

execute as @e[tag=to_items_back] on target run function maniac:menu/maniac_classes/display_class_items_grenny
execute as @e[tag=to_items_back] run data remove entity @s interaction





# ===========================================
# ОБРАБОТКА СТАРТА ИГРЫ
# ===========================================
execute if score Game game matches 1 if score playing game matches 0 unless entity @a[scores={ManiacClass=0},team=maniac] unless entity @a[scores={SurvivorClass=0},team=survivors] run function maniac:game/play_game


# ===========================================
# ОБРАБОТКА ПОБЕДЫ
# ===========================================
execute if entity @a[team=survivors,gamemode=spectator] unless entity @a[team=survivors,gamemode=!spectator] if score Game game matches 1 run function maniac:game/game_end
execute if entity @a[team=maniac,gamemode=spectator] unless entity @a[team=maniac,gamemode=!spectator] if score Game game matches 1 run function maniac:game/game_end
execute if score @r PlayerLevel matches ..0 if score Game game matches 1 run function maniac:game/game_end


# ===========================================
# ОБРАБОТКА СМЕРТИ
# ===========================================
execute if entity @a[scores={death=1..}] run function maniac:game/death