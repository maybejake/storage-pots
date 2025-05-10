scoreboard players set @s storagepots.sherd_use 0
execute if entity @s[predicate=!storagepots:sherd] run return fail

tag @s add storagepots.sherd
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function storagepots:sherd/ray/start
tag @s remove storagepots.sherd