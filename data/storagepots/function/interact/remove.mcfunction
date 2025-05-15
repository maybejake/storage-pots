#pull data
function storagepots:data/pull_data

execute if score @s storagepots.total_item_count matches 0 run return fail
execute if entity @p[tag=storagepots.interact,predicate=!storagepots:sneaking] run function storagepots:interact/single
execute if entity @p[tag=storagepots.interact,predicate=storagepots:sneaking] run function storagepots:interact/stack

function storagepots:interact/spawn