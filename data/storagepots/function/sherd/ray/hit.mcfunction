scoreboard players set @s storagepots.raycast_hit 1
execute at @s run playsound minecraft:entity.breeze.idle_ground master @s ~ ~ ~ 0.5 1.3
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] run function storagepots:sherd/whisper