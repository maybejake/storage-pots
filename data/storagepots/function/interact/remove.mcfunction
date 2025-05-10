#pull data
function storagepots:data/pull_data

execute if score @s storagepots.total_item_count matches 0 run return fail
execute if entity @p[tag=storagepots.interact,predicate=!storagepots:sneaking] run function storagepots:interact/single
execute if entity @p[tag=storagepots.interact,predicate=storagepots:sneaking] run function storagepots:interact/stack

execute store result storage storagepots:temp output.strength1 double 0.000005 run random value -10000..10000
execute store result storage storagepots:temp output.strength2 double 0.000005 run random value -10000..10000

function storagepots:interact/summon with storage storagepots:temp output

playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 0.3 1.5
particle minecraft:white_smoke ~ ~0.85 ~ 0 0 0 0.03 6 normal

#push data
function storagepots:data/push_data