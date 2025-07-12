execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run function maniac:start_game
execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run data remove entity @s interaction




# ===========================================
# ОБРАБОТКА КЛИКОВ БАБКА ГРЕННИ
# ===========================================
execute as @e[tag=select_class] on target run scoreboard players set @s ManiacClass 1
execute as @e[tag=select_class] on target run tellraw @s "Вы выбрали Бабку Гренни"
execute as @e[tag=select_class] run data remove entity @s interaction


execute as @e[tag=to_items] on target run function maniac:menu/display_class_items
execute as @e[tag=to_items] run data remove entity @s interaction

execute as @e[tag=to_main] on target run function maniac:menu/display_class_main
execute as @e[tag=to_main] run data remove entity @s interaction

execute as @e[tag=to_abilities] on target run function maniac:menu/display_class_abilities
execute as @e[tag=to_abilities] run data remove entity @s interaction

execute as @e[tag=to_items_back] on target run function maniac:menu/display_class_items
execute as @e[tag=to_items_back] run data remove entity @s interaction