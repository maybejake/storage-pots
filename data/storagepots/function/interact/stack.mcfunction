execute if score @s storagepots.total_item_count matches ..63 store result storage storagepots:temp output.count int 1 run scoreboard players get @s storagepots.total_item_count
execute if score @s storagepots.total_item_count matches ..63 run scoreboard players set @s storagepots.previous_total_item_count 0
execute if score @s storagepots.total_item_count matches ..63 run scoreboard players set @s storagepots.total_item_count 0

execute if score @s storagepots.total_item_count matches 64.. run data modify storage storagepots:temp output.count set value 64
execute if score @s storagepots.total_item_count matches 64.. run scoreboard players remove @s storagepots.previous_total_item_count 64
execute if score @s storagepots.total_item_count matches 64.. run scoreboard players remove @s storagepots.total_item_count 64

data modify storage storagepots:temp output.id set from storage storagepots:temp pot_contents.id

#may not be present

data modify storage storagepots:temp output.components set value {}
execute if data storage storagepots:temp pot_contents.components run data modify storage storagepots:temp output.components set from storage storagepots:temp pot_contents.components