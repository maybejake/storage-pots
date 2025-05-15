#adjust amount inside pot to reflect total quantity, for comparators
scoreboard players set $256 storagepots.dummy 256
scoreboard players operation $div_check storagepots.dummy = @s storagepots.total_item_count
scoreboard players operation $div_check storagepots.dummy /= $256 storagepots.dummy

execute if score $div_check storagepots.dummy matches 0 run scoreboard players set $div_check storagepots.dummy 1

scoreboard players operation @s storagepots.pot_item_count = $div_check storagepots.dummy
scoreboard players operation @s storagepots.marker_item_count = @s storagepots.total_item_count
scoreboard players operation @s storagepots.marker_item_count -= $div_check storagepots.dummy

function storagepots:data/return_data