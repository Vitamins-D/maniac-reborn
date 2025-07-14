scoreboard players reset *players7 Players
execute positioned ~ ~2 ~ as @a[distance=..2.5,gamemode=adventure,team=survivors] run scoreboard players add *players7 Players 1
execute positioned ~ ~2 ~ if score *players7 Players matches 1.. if score comp7 hackGoal matches 0 run scoreboard players add Progress7 hack 1
execute positioned ~ ~2 ~ if score *players7 Players matches 2.. if score comp7 hackGoal matches 0 run scoreboard players add Progress7 hack 1
execute positioned ~ ~2 ~ if score *players7 Players matches 3.. if score comp7 hackGoal matches 0 run scoreboard players add Progress7 hack 1
execute positioned ~ ~2 ~ if score *players7 Players matches 4.. if score comp7 hackGoal matches 0 run scoreboard players add Progress7 hack 1
execute positioned ~ ~2 ~ if score *players7 Players matches 1.. run function maniac:hacks/genanim
execute positioned ~ ~ ~ if score *players7 Players matches 1.. run function maniac:hacks/hack_effect7