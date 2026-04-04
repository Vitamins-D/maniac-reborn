execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run function maniac:game/start_game
execute as @e[type=minecraft:interaction,tag=start_game_show] if data entity @s interaction run data remove entity @s interaction

# ===========================================
# УДАЛЕНИЕ ОПЫТА
# ===========================================
kill @e[type=experience_orb]

# ===========================================
# ОБРАБОТКА СТАРТА ИГРЫ [СТАРОЕ]
# ===========================================
#execute if score Game game matches 1 if score playing game matches 0 unless entity @a[scores={ManiacClass=0},team=maniac] unless entity @a[scores={SurvivorClass=0},team=survivors] run function maniac:game/play_game


# ===========================================
# ОБРАБОТКА ПОБЕДЫ
# ===========================================
execute if entity @a[team=survivors,gamemode=spectator] unless entity @a[team=survivors,gamemode=!spectator] if score Game game matches 1 run function maniac:game/game_end
execute if entity @a[team=maniac,gamemode=spectator] unless entity @a[team=maniac,gamemode=!spectator] if score Game game matches 1 run function maniac:game/game_end


# ===========================================
# ОБРАБОТКА СМЕРТИ
# ===========================================
execute if entity @a[scores={death=1..}] run function maniac:game/death


# ===========================================
# ОБРАБОТКА КЛАССОВЫХ ПРИКОЛОВ
# ===========================================
function maniac:classes/shaman_spirits

# Plague
execute as @e[type=zombie_villager,tag=plague_zombie] at @s run effect give @a[team=survivors,gamemode=!spectator,distance=..3] maniacrev:plague 3 0