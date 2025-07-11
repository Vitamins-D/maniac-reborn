kill @e[tag=settings_title]
execute as @e[tag=settings_marker] at @s run summon minecraft:text_display ~ ~-0.5 ~ {Tags:["settings_title"],text:'{"text":"Настройки","color":"gold"}',Rotation:[90f,0f],shadow:1b,background:0b}
execute as @e[tag=settings_marker] at @s run summon minecraft:text_display ~ ~-1 ~ {Tags:["settings_title"],text:'{"text":"[Пкм]","color":"white"}',Rotation:[90f,0f],shadow:1b,background:0b}

execute as @e[tag=settings_marker] at @s run summon minecraft:text_display ~ ~-0.5 ~ {Tags:["settings_title"],text:'{"text":"Настройки","color":"gold"}',Rotation:[-90f,0f],shadow:1b,background:0b}
execute as @e[tag=settings_marker] at @s run summon minecraft:text_display ~ ~-1 ~ {Tags:["settings_title"],text:'{"text":"[Пкм]","color":"white"}',Rotation:[-90f,0f],shadow:1b,background:0b}

kill @e[tag=settings_show]
execute as @e[tag=settings_marker] at @s run summon minecraft:interaction ~0.5 ~-1 ~ {Tags:["settings_show"],width:1f,height:0.4f}

kill @e[tag=background]
execute as @e[tag=settings_marker] at @s run summon text_display ~ ~-1.3 ~-0.25 {shadow:1b,Tags:["background"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,5f,20f]},text:'{"text":" "}',background:1679234582,Rotation:[90f,0f]}
execute as @e[tag=settings_marker] at @s run summon text_display ~ ~-1.3 ~0.25 {shadow:1b,Tags:["background"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,5f,20f]},text:'{"text":" "}',background:1679234582,Rotation:[-90f,0f]}