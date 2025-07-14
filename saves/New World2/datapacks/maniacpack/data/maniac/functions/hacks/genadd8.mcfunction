scoreboard players reset *players8 Players
execute positioned ~ ~2 ~ as @a[distance=..2.5,gamemode=adventure,team=survivors] run scoreboard players add *players8 Players 1
execute positioned ~ ~2 ~ if score *players8 Players matches 1.. if score comp8 hackGoal matches 0 run scoreboard players add Progress8 hack 1
execute positioned ~ ~2 ~ if score *players8 Players matches 2.. if score comp8 hackGoal matches 0 run scoreboard players add Progress8 hack 1
execute positioned ~ ~2 ~ if score *players8 Players matches 3.. if score comp8 hackGoal matches 0 run scoreboard players add Progress8 hack 1
execute positioned ~ ~2 ~ if score *players8 Players matches 4.. if score comp8 hackGoal matches 0 run scoreboard players add Progress8 hack 1
execute positioned ~ ~2 ~ if score *players8 Players matches 1.. run function maniac:hacks/genanim
execute positioned ~ ~ ~ if score *players8 Players matches 1.. run function maniac:hacks/hack_effect8