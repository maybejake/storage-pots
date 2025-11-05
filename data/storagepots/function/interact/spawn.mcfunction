function storagepots:interact/summon with storage storagepots:temp output

playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.3 1.5
particle minecraft:white_smoke ~ ~0.85 ~ 0 0 0 0.03 6 normal

#push data
function storagepots:data/push_data