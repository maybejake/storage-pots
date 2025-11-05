kill @e[tag=storagepots.visual,distance=..0.3]
execute as @e[type=minecraft:item,tag=storagepots.drop,sort=nearest,distance=..1] run function storagepots:destroy/items

execute unless score @s storagepots.total_item_count matches 1.. run loot spawn ~ ~0.1 ~ loot storagepots:storage_pot
execute if score @s storagepots.total_item_count matches 1.. run data modify storage storagepots:destroy item set from entity @s item
execute if score @s storagepots.total_item_count matches 1.. store result storage storagepots:destroy item.components."minecraft:custom_data"."storagepots:count" int 1 run scoreboard players get @s storagepots.total_item_count
execute if score @s storagepots.total_item_count matches 1.. run function storagepots:destroy/filled/summon
kill @s