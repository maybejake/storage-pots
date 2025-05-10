scoreboard players set @s storagepots.raycast_hit 0
scoreboard players set @s storagepots.raycast_distance 0

execute store result score @s storagepots.reach run attribute @s minecraft:block_interaction_range get 10

function storagepots:sherd/ray/ray