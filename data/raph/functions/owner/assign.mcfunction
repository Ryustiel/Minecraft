#score R.owner.maxid
#score R.owner.id

scoreboard players operation @s R.owner.id = @p R.owner.maxid
scoreboard players add @s R.owner.id 1
scoreboard players operation @a R.owner.maxid = @s R.owner.id

#reexecute
execute as @e[limit=1, scores={R.owner.id=0}] run function raph:owner/assign
