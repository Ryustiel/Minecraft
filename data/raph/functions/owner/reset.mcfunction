#tag R.owner.identify (specify non player entities receiving ids)

#resets ids
scoreboard players reset @e[type=!player] R.owner.id
scoreboard players set @e[type=!player, tag=R.owner.identify] R.owner.id 0
scoreboard players set @a R.owner.maxid 0

#id redistribution
function raph:owner/assign
