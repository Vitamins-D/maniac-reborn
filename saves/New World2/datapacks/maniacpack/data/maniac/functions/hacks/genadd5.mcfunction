execute positioned ~ ~2 ~ as @a[distance=..2.5,gamemode=adventure,team=survivors,limit=4] if score comp5 hackGoal matches 0 run scoreboard players add Progress5 hack 1
execute positioned ~ ~2 ~ as @a[distance=..2.5,gamemode=adventure,team=survivors,scores={SurvivorClass=10},limit=1] if score comp5 hackGoal matches 0 run scoreboard players add Progress5 hack 1

execute positioned ~ ~2 ~ run function maniac:hacks/genanim
execute positioned ~ ~ ~ if entity @a[distance=..2.5,gamemode=adventure,team=survivors] run function maniac:hacks/hack_effect5