item replace entity @a[scores={ManiacClass=4},team=maniac] armor.legs with leather_leggings{display:{color:1908001},Unbreakable:1b} 1
item replace entity @a[scores={ManiacClass=4},team=maniac] armor.feet with leather_boots{display:{color:1908001},Unbreakable:1b} 1
item replace entity @a[scores={ManiacClass=4},team=maniac] armor.chest with leather_chestplate{display:{color:16777215},Unbreakable:1b} 1
give @a[scores={ManiacClass=4},team=maniac] cgm:pistol{AmmoCount:5,Attachments:{Barrel:{id:"cgm:silencer",Count:1b}},Color:1908001} 1
give @a[scores={ManiacClass=4},team=maniac] wooden_sword 1
give @a[team=maniac,scores={ManiacClass=4}] maniacrev:agent47_tablet
give @a[team=maniac,scores={ManiacClass=4}] cgm:basic_bullet 2
effect give @a[scores={ManiacClass=4},team=maniac] maniacrev:weak_weakness infinite 0 true
effect give @a[scores={ManiacClass=4},team=maniac] slowness infinite 1 true

execute as @a[scores={ManiacClass=4},team=maniac] at @s run maniacrev settarget @s @r[gamemode=adventure,team=survivors]