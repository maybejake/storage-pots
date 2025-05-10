kill @e[tag=storagepots.visual,distance=..0.5]
execute as @e[type=item,tag=!storagepots.item,sort=nearest,limit=7,distance=..1] run function storagepots:destroy/items

execute store result storage storagepots:destroy strength1 double 0.000008 run random value -10000..10000
execute store result storage storagepots:destroy strength2 double 0.000008 run random value -10000..10000

execute if score @s storagepots.total_item_count matches 0 run function storagepots:destroy/summon with storage storagepots:destroy
execute if score @s storagepots.total_item_count matches 1.. run data modify storage storagepots:destroy item set from entity @s item
execute if score @s storagepots.total_item_count matches 1.. store result storage storagepots:destroy item.components."minecraft:custom_data"."storagepots:contents".count int 1 run scoreboard players get @s storagepots.total_item_count
execute if score @s storagepots.total_item_count matches 1.. run function storagepots:destroy/summon_filled with storage storagepots:destroy
kill @s