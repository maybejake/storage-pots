execute as @e[type=minecraft:item_frame,tag=storagepots.storage_pot] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function storagepots:setup
execute as @e[type=minecraft:item_display,tag=storagepots.marker] at @s run function storagepots:marker
execute as @a[scores={storagepots.pot_use=1..}] run scoreboard players set @s storagepots.pot_use 0
execute as @a[scores={storagepots.sherd_use=1..}] run function storagepots:sherd/use