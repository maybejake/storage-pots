advancement revoke @s only storagepots:insert

#force update every storage pot nearby on insert
execute at @s as @e[type=minecraft:item_display,tag=storagepots.marker,distance=..10] at @s run function storagepots:marker