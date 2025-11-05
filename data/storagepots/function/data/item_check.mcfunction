#block entry of banned items
execute if items entity @s contents item_frame[minecraft:custom_data~{"storagepots:pot":true}] run return fail
execute if items entity @s contents *[minecraft:container,!minecraft:container=[]] run return fail
execute if items entity @s contents *[minecraft:bundle_contents,!minecraft:bundle_contents=[]] run return fail
execute if items entity @s contents #storagepots:ignore run return fail

#full from earlier in loop, stop
execute if score $temp_count storagepots.dummy matches 16384.. run return fail

#pot is filled, try to match item
execute if score $filled storagepots.dummy matches 1 run data modify storage storagepots:temp item_check set from storage storagepots:temp pot_contents.id
execute if score $filled storagepots.dummy matches 1 store result score $item_check storagepots.dummy run data modify storage storagepots:temp item_check set from entity @s Item.id
execute if score $filled storagepots.dummy matches 1 if score $item_check storagepots.dummy matches 1 run return fail

#also match components (different because its possible to have no components)
execute if score $filled storagepots.dummy matches 1 run data modify storage storagepots:temp pot_component_check set value ""
execute if score $filled storagepots.dummy matches 1 run data modify storage storagepots:temp item_component_check set value ""
execute if score $filled storagepots.dummy matches 1 run data modify storage storagepots:temp pot_component_check set from storage storagepots:temp pot_contents.components
execute if score $filled storagepots.dummy matches 1 run data modify storage storagepots:temp item_component_check set from entity @s Item.components
execute if score $filled storagepots.dummy matches 1 store result score $component_check storagepots.dummy run data modify storage storagepots:temp pot_component_check set from storage storagepots:temp item_component_check
execute if score $filled storagepots.dummy matches 1 if score $component_check storagepots.dummy matches 1 run return fail

#copy item and components to pot
execute if score $filled storagepots.dummy matches 0 run data modify storage storagepots:temp pot_contents.id set from entity @s Item.id
execute if score $filled storagepots.dummy matches 0 run data modify storage storagepots:temp pot_contents.components set from entity @s Item.components

execute store result score @s storagepots.total_item_count run data get entity @s Item.count
scoreboard players operation $count_check storagepots.dummy = $temp_count storagepots.dummy
scoreboard players operation $count_check storagepots.dummy += @s storagepots.total_item_count

#only play sounds once per tick, to avoid LOUD
execute if score $insert_check storagepots.dummy matches 0 run function storagepots:data/insert_animation

#item sucessfully added, mark as filled if not already
execute if score $filled storagepots.dummy matches 0 run scoreboard players set $filled storagepots.dummy 1

#can fit, add and kill
execute if score $count_check storagepots.dummy matches ..16384 run scoreboard players operation $temp_count storagepots.dummy = $count_check storagepots.dummy
execute if score $count_check storagepots.dummy matches ..16384 run return run kill @s

#cant fit, try to split stack
#get remaining space
scoreboard players set $max storagepots.dummy 16384
scoreboard players operation $max storagepots.dummy -= $temp_count storagepots.dummy

#subtract remainder from entity item count
scoreboard players operation @s storagepots.total_item_count -= $max storagepots.dummy

#add remaining space to actual 
scoreboard players operation $temp_count storagepots.dummy += $max storagepots.dummy

#modify entity item count
execute store result entity @s Item.count int 1 run scoreboard players get @s storagepots.total_item_count