#score R.owner.source
#resets every entity from target tags.

tag @e[tag=R.owner.target] remove R.owner.target
tag @e[tag=R.owner.source] remove R.owner.source

#tag R.owner.target to self

tag @s add R.owner.target

#find corresponding source id and
#tag R.owner.source; damage originates from this entity.

scoreboard players operation @e[scores={R.owner.id=1..}] R.owner.id -= @s R.owner.source
tag @e[scores={R.owner.id=0}, limit=1] add R.owner.source
scoreboard players operation @e[scores={R.owner.id=-9999..}] R.owner.id += @s R.owner.source

#now we got source entity and target entity out and accessible.
