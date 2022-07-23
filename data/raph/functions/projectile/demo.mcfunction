#Summon and set Tags
summon minecraft:armor_stand ~ ~ ~ {Tags:["R.projectile", "R.projectile.path.linear1", "R.projectile.new", "R.projectiledemo.smokebolt"], Marker:1, Invisible:1}

#set orientation
execute anchored eyes run tp @e[tag=R.projectile.new, limit=1] ^ ^ ^1.5 facing ^ ^ ^10

#set speed
scoreboard players set @e[tag=R.projectile.new, limit=1] R.projectl.speed 8

#set lifespan
scoreboard players set @e[tag=R.projectile.new, limit=1] R.projectl.tick 40

#remove last tag
tag @e[tag=R.projectile.new, limit=1] remove R.projectile.new