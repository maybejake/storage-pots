#every other tick to prevent chunk loading
execute unless block ~ ~ ~ minecraft:decorated_pot run return run function storagepots:destroy/main

#particle
execute if entity @s[predicate=storagepots:tick5] run particle portal ~ ~0.7 ~ 0 0 0 0.15 1 normal
execute if entity @s[predicate=storagepots:tick6] run particle portal ~ ~0.7 ~ 0 0 0 0.15 1 normal

#pull data
function storagepots:data/pull_data

execute if items block ~ ~ ~ contents item_frame[minecraft:custom_data~{"storagepots:pot":true}] run return run function storagepots:reject_item
execute if items block ~ ~ ~ contents *[minecraft:container,!minecraft:container=[]] run return run function storagepots:reject_item
execute if items block ~ ~ ~ contents *[minecraft:bundle_contents,!minecraft:bundle_contents=[]] run return run function storagepots:reject_item
execute if items block ~ ~ ~ contents #storagepots:ignore run return run function storagepots:reject_item

#check for item entities
scoreboard players operation $temp_count storagepots.dummy = @s storagepots.total_item_count
execute if score @s storagepots.total_item_count matches ..16383 positioned ~ ~1 ~ align xyz as @e[type=minecraft:item,tag=!storagepots.ignore,tag=!storagepots.drop,dx=0,dy=0,dz=0] run function storagepots:data/item_check
scoreboard players operation @s storagepots.total_item_count = $temp_count storagepots.dummy

#no change in quantity, do nothing
execute if score @s storagepots.total_item_count = @s storagepots.previous_total_item_count run return fail

#set check back to 0
scoreboard players set $insert_check storagepots.dummy 0

#store current item count
scoreboard players operation @s storagepots.previous_total_item_count = @s storagepots.total_item_count

#push data
function storagepots:data/push_data