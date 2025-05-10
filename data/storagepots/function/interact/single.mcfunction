scoreboard players remove @s storagepots.total_item_count 1

data modify storage storagepots:temp output.count set value 1
data modify storage storagepots:temp output.id set from storage storagepots:temp pot_contents.id

#may not be present
execute store success score $component_check storagepots.dummy run data get storage storagepots:temp pot_contents.components
execute if score $component_check storagepots.dummy matches 0 run data modify storage storagepots:temp output.components set value {}
execute if score $component_check storagepots.dummy matches 1 run data modify storage storagepots:temp output.components set from storage storagepots:temp pot_contents.components