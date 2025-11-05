scoreboard players remove @s storagepots.total_item_count 1
scoreboard players remove @s storagepots.previous_total_item_count 1

data modify storage storagepots:temp output.count set value 1
data modify storage storagepots:temp output.id set from storage storagepots:temp pot_contents.id

#may not be present
data modify storage storagepots:temp output.components set value {}
execute if data storage storagepots:temp pot_contents.components run data modify storage storagepots:temp output.components set from storage storagepots:temp pot_contents.components