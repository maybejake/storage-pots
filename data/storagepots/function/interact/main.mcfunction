advancement revoke @s only storagepots:interact
tag @s add storagepots.interact
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function storagepots:interact/ray/start
tag @s remove storagepots.interact