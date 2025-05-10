execute if block ~ ~ ~ minecraft:decorated_pot run function storagepots:interact/ray/hit
scoreboard players add @s storagepots.raycast_distance 1

execute if score @s storagepots.raycast_hit matches 0 if score @s storagepots.raycast_distance < @s storagepots.reach positioned ^ ^ ^0.1 run function storagepots:interact/ray/ray