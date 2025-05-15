#in loving memory of the moon...
#execute if score @s storagepots.total_item_count matches 0 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value ""
#execute if score @s storagepots.total_item_count matches 1..4095 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "🌑"
#execute if score @s storagepots.total_item_count matches 4096..8191 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "🌘"
#execute if score @s storagepots.total_item_count matches 8192..12287 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "🌗"
#execute if score @s storagepots.total_item_count matches 12288..16383 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "🌖"
#execute if score @s storagepots.total_item_count matches 16384.. run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "🌕"

execute if score @s storagepots.total_item_count matches 0 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value ""
execute if score @s storagepots.total_item_count matches 1..1637 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▯▯▯▯▯▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 1638..3276 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▯▯▯▯▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 3277..4914 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▯▯▯▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 4915..6553 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▯▯▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 6554..8191 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▯▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 8192..9829 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▯▯▯▯▯"
execute if score @s storagepots.total_item_count matches 9830..11466 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▮▯▯▯▯"
execute if score @s storagepots.total_item_count matches 11467..13106 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▮▮▯▯▯"
execute if score @s storagepots.total_item_count matches 13107..14746 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▮▮▮▯▯"
execute if score @s storagepots.total_item_count matches 14746..16383 run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▮▮▮▮▯"
execute if score @s storagepots.total_item_count matches 16384.. run data modify entity @n[type=text_display,tag=storagepots.count] text.text set value "▮▮▮▮▮▮▮▮▮▮"

execute if score @s storagepots.total_item_count matches 0 run return run function storagepots:data/empty
execute if score @s storagepots.total_item_count matches 1..16383 run return run function storagepots:data/split_count
execute if score @s storagepots.total_item_count matches 16384 run return run function storagepots:data/max