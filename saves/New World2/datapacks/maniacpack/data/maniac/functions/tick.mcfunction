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
# УДАЛЕНИЕ ОПЫТА
# ===========================================
kill @e[type=experience_orb]

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


# ===========================================
# ОБРАБОТКА ГЕНЕРАТОРА ФРЕДДИ
# ===========================================
execute if entity @a[team=maniac,scores={ManiacClass=12}] run function maniac:classes/freddy/charge_display



# ===========================================
# ОБРАБОТКА ВЫДАЧИ КАРТОЧКИ
# ===========================================
execute if score Итого Complete >= Game allGoal if score Итого Complete matches ..90 run function maniac:game/complete_comps


# ===========================================
# ОБРАБОТКА КЛАССОВЫХ ПРИКОЛОВ
# ===========================================
function maniac:classes/shaman_spirits
function maniac:classes/freddy/fnafgenremove
execute if entity @a[team=maniac,scores={ManiacClass=12}] if score gen hack matches ..1 run effect give @a[team=survivors, gamemode=adventure] minecraft:darkness infinite 0
execute if entity @a[team=maniac,scores={ManiacClass=12}] if score gen hack matches 999.. run effect clear @a[team=survivors, gamemode=adventure] minecraft:darkness
execute as @a[team=maniac,scores={ManiacClass=9},gamemode=!spectator] at @s run effect give @a[distance=..3,team=survivors,gamemode=!spectator] minecraft:glowing 5 0
# Чумной Доктор
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{display:{Name:"{\"text\":\"Коса\"}"}}}}] at @s run effect give @a[distance=..5,sort=random,team=!maniac,nbt=!{ActiveEffects:[{"forge:id":"maniac_weapons:plague"}]}] maniacweapons:plague 4 0
execute as @e[type=zombie,tag=plague_zombie] at @s run effect give @a[team=survivors,gamemode=!spectator,distance=..3] maniacweapons:plague 7 0

execute if score Итого Complete matches 100.. if score @r PlayerLevel matches ..90 run effect give @a[team=maniac,gamemode=!spectator] minecraft:glowing 90 0

# Подсказка алхимику
execute if entity @a[team=survivors,scores={SurvivorClass=6}] as @e[type=marker,tag=brewSpawn] at @s run particle minecraft:witch ~ ~1 ~ -0.5 0.5 0.5 1 1 force @a[team=survivors,scores={SurvivorClass=6}]