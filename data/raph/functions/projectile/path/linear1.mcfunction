#triggerz
execute positioned ~-0.05 ~ ~-0.05 if entity @e[type=!armor_stand, type=!item, dy=-0.2, dx=0.1, dz=0.1] run function raph:projectile/impact/testimpact

execute unless block ~ ~ ~ #raph:gaps positioned ^ ^ ^-0.05 run function raph:projectile/impact/testimpact

#path
tp @s ^ ^ ^0.2

function raph:projectile/trail/testtrail

#iterations
scoreboard players remove @s R.projectl.calc 1
execute if entity @s[scores={R.projectl.calc=1..}] at @s run function raph:projectile/path/linear1
