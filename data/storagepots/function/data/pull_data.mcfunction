#reset temp storage, done in case of leftover components
data modify storage storagepots:temp pot_contents set value {id:"",count:0}

#pull data out
data modify storage storagepots:temp marker_components set from entity @s item.components
execute store result score @s storagepots.marker_item_count run data get storage storagepots:temp marker_components."minecraft:custom_data"."storagepots:count"
execute store success score $filled storagepots.dummy run data modify storage storagepots:temp pot_contents set from block ~ ~ ~ item
execute store result score @s storagepots.pot_item_count run data get storage storagepots:temp pot_contents.count

execute if score $filled storagepots.dummy matches 0 store success score $filled storagepots.dummy run data modify storage storagepots:temp pot_contents set from storage storagepots:temp marker_components."minecraft:bundle_contents"[0]

#get total
scoreboard players operation @s storagepots.total_item_count = @s storagepots.marker_item_count
scoreboard players operation @s storagepots.total_item_count += @s storagepots.pot_item_count