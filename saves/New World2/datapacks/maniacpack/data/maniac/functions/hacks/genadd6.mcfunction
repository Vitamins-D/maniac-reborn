scoreboard players reset *players6 Players
execute positioned ~ ~2 ~ as @a[distance=..2.5,gamemode=adventure,team=survivors] run scoreboard players add *players6 Players 1
execute positioned ~ ~2 ~ if score *players6 Players matches 1.. if score comp6 hackGoal matches 0 run scoreboard players add Progress6 hack 1
execute positioned ~ ~2 ~ if score *players6 Players matches 2.. if score comp6 hackGoal matches 0 run scoreboard players add Progress6 hack 1
execute positioned ~ ~2 ~ if score *players6 Players matches 3.. if score comp6 hackGoal matches 0 run scoreboard players add Progress6 hack 1
execute positioned ~ ~2 ~ if score *players6 Players matches 4.. if score comp6 hackGoal matches 0 run scoreboard players add Progress6 hack 1
execute positioned ~ ~2 ~ if score *players6 Players matches 1.. run function maniac:hacks/genanim
execute positioned ~ ~ ~ if score *players6 Players matches 1.. run function maniac:hacks/hack_effect6