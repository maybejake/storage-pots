execute unless block ~ ~ ~ minecraft:decorated_pot run return run function storagepots:destroy/main

#particle
execute if entity @s[predicate=storagepots:tick5] run particle portal ~ ~0.7 ~ 0 0 0 0.15 1 normal

#pull data
function storagepots:data/pull_data

execute if data storage storagepots:temp pot_contents.components."minecraft:custom_data"."storagepots:pot" run return run function storagepots:reject_item
execute if data storage storagepots:temp pot_contents.components."minecraft:container" run return run function storagepots:reject_item
execute if data storage storagepots:temp pot_contents.components."minecraft:bundle_contents" run return run function storagepots:reject_item

#check for item entities
scoreboard players operation $temp_count storagepots.dummy = @s storagepots.total_item_count
execute if score @s storagepots.total_item_count matches ..16383 positioned ~ ~0.7 ~ as @e[type=item,distance=..0.5,tag=!storagepots.output_item] run function storagepots:data/item_check
scoreboard players operation @s storagepots.total_item_count = $temp_count storagepots.dummy

#no change in quantity, do nothing
execute if score @s storagepots.total_item_count = @s storagepots.previous_total_item_count run return fail

#set check back to 0
scoreboard players set $insert_check storagepots.dummy 0

#store current item count
scoreboard players operation @s storagepots.previous_total_item_count = @s storagepots.total_item_count

#push data
function storagepots:data/push_data