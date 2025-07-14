give @a[scores={SurvivalClass=5},gamemode=!spectator] minecraft:paper{display: {Name:"{\"text\":\"Бинт\"}"}} 2

execute if entity @a[team=maniac,scores={ManiacClass=3}] run effect give @a[team=survivors] minecraft:glowing 8 0

execute if entity @a[team=survivors,scores={SurvivorClass=4},gamemode=!spectator] run effect give @a[team=maniac] minecraft:glowing 10 0

execute if score Итого Complete matches 3 if entity @a[team=maniac,scores={ManiacClass=7},gamemode=!spectator] run effect give @a[team=survivors,gamemode=!spectator] minecraft:nausea 60 255

tp @a[team=maniac,scores={ManiacClass=8},gamemode=!spectator] @r[team=survivors,gamemode=!spectator]

give @a[scores={SurvivorClass=9},team=survivors,gamemode=!spectator] maniacweapons:adrenalain 1

execute if score Итого Complete = Итого allGoal run give @a[team=survivors,scores={SurvivorClass=7}] cgm:stun_grenade 1

execute if score Итого Complete matches 3 run give @a[team=survivors,scores={SurvivorClass=7}] cgm:stun_grenade 1

execute if entity @a[team=survivors,scores={SurvivorClass=8},gamemode=!spectator] if score Итого hack matches 3 run function maniac:classes/necromancer