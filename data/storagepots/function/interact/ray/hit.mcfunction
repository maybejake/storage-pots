scoreboard players set @s storagepots.raycast_hit 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] run function storagepots:interact/remove