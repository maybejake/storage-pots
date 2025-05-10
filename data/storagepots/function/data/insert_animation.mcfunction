playsound minecraft:block.decorated_pot.insert master @a ~ ~ ~ 1 1
playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.3 1.5
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run particle minecraft:white_smoke ~ ~0.85 ~ 0 0 0 0.03 6 normal
scoreboard players set $insert_check storagepots.dummy 1