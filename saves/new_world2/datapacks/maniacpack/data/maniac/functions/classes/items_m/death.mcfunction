item replace entity @a[team=maniac,scores={ManiacClass=10}] armor.head with minecraft:skeleton_skull 1
item replace entity @a[team=maniac,scores={ManiacClass=10}] armor.chest with minecraft:leather_chestplate{display:{color:0}} 1
item replace entity @a[team=maniac,scores={ManiacClass=10}] armor.legs with minecraft:leather_leggings{display:{color:0}} 1
item replace entity @a[team=maniac,scores={ManiacClass=10}] armor.feet with minecraft:leather_boots{display:{color:0}} 1
effect give @a[team=maniac,scores={ManiacClass=10}] minecraft:slowness infinite 1
give @a[team=maniac,scores={ManiacClass=10}] maniacrev:death_scythe{Unbreakable:100} 1
scoreboard players set @a deathbaff 0