particle dust 1 0 1 4 ~ ~4 ~ 4 4 4 0 1000 force

playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 4 0

fill ~2 ~ ~2 ~-2 ~ ~-2 end_gateway replace air

execute as @a[distance=..4] at @s run tp @s ~ ~1.6 ~

effect give @a[distance=..5.5] levitation 1 0 true