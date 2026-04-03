give @a[team=survivors] securitycraft:keycard_lv5{signature: 00000, linked: 1b, ownerUUID: "535bded9-d49b-488c-821c-c7a7ed83b410",ownerName:"VitaminLLO"} 1
scoreboard players set Итого Complete 100
effect clear @a[team=maniac] minecraft:resistance
effect clear @a[team=survivors] minecraft:weakness
execute as @e[type=marker,tag=weaponMarker] at @s run summon armor_stand ~-0.5 ~ ~-0.5 {Tags:["removeMe"],NoGravity:1b,Invisible:1b,Glowing:1b,glow_color_override:9408399}

maniacrev phase 3