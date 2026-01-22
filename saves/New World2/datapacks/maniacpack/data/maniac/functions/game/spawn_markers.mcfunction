# Remove all existing markers with tag "removeThis"
kill @e[type=marker,tag=removeThis]
kill @e[type=marker,tag=markerSpawn]
kill @e[type=marker,tag=hackSpawn]

# Spawn new markers at specified coordinates
# Mansion
execute if score Game map matches 1 run summon marker -219 33 22 {Tags:["removeThis","brewSpawn"]}
execute if score Game map matches 1 run summon marker -258 42 7 {Tags:["removeThis","brewSpawn"]}
execute if score Game map matches 1 run summon marker -211 26 17 {Tags:["removeThis","brewSpawn"]}

execute if score Game map matches 1 run summon marker -230 40 -4 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -258 41 -19 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -230 40 -33 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -225 32 -26 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -255 32 -2 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -230 31 4 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -235 26 -28 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -257 24 -8 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -225 24 2 {Tags:["markerSpawn","plagueMansion"]}
execute if score Game map matches 1 run summon marker -285 40 -2 {Tags:["markerSpawn","plagueMansion"]}

execute if score Game map matches 1 run summon marker -252 25 -28 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -225 24 25 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -243 31 5 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -265 33 -10 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -208 33 4 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -201 40 -25 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -235 42 -44 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -277 43 -29 {Tags:["hackSpawn"]}
execute if score Game map matches 1 run summon marker -286 41 16 {Tags:["hackSpawn"]}

execute if score Game map matches 1 run summon marker -235 46 3 {Tags:["markerSpawn","weaponMarker"]}
execute if score Game map matches 1 run summon marker -267 33 -18 {Tags:["markerSpawn","weaponMarker"]}
execute if score Game map matches 1 run summon marker -233 25 -45 {Tags:["markerSpawn","weaponMarker"]}

# FNAF
execute if score Game map matches 4 run summon marker -523 45 -25 {Tags:["removeThis","brewSpawn"]}
execute if score Game map matches 4 run summon marker -486 45 -140 {Tags:["removeThis","brewSpawn"]}
execute if score Game map matches 4 run summon marker -511 44 -49 {Tags:["removeThis","brewSpawn"]}

execute if score Game map matches 4 run summon marker -494 44 -7 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -491 45 -66 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -469 44 -23 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -507 45 -38 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -483 57 -73 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -492 45 -122 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -473 45 -134 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -465 45 -60 {Tags:["markerSpawn","plagueFnaf"]}
execute if score Game map matches 4 run summon marker -501 45 -88 {Tags:["markerSpawn","plagueFnaf"]}

execute if score Game map matches 4 run summon marker -494 44 19 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -496 45 -31 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -477 44 7 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -483 44 -41 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -456 45 -75 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -479 57 -100 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -510 45 -122 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -523 43 -88 {Tags:["hackSpawn"]}
execute if score Game map matches 4 run summon marker -461 49 -112 {Tags:["hackSpawn"]}

execute if score Game map matches 4 run summon marker -521 44 -74 {Tags:["markerSpawn","weaponMarker"]}
execute if score Game map matches 4 run summon marker -491 45 -111 {Tags:["markerSpawn","weaponMarker"]}
execute if score Game map matches 4 run summon marker -547 45 -11 {Tags:["markerSpawn","weaponMarker"]}