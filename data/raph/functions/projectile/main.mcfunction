#score R.projectl.speed (number of 0.2 update frames per update)
#score R.projectl.calc (number of 0.2 update frames for this update)
#score R.projectl.tick (time before autodestroy)

#update duration
kill @s[scores={R.projectl.tick=0}]
scoreboard players remove @s[scores={R.projectl.tick=1..}] R.projectl.tick 1

#save original speed data
scoreboard players operation @s R.projectl.calc = @s R.projectl.speed

#triggers specific travel type update - REGISTER NEW path HERE
#linear1
execute if entity @s[tag=R.projectile.path.linear1, scores={R.projectl.calc=1..}] run function raph:projectile/path/linear1