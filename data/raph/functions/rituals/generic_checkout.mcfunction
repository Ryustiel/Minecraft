
#Resets Timer
scoreboard players set @s R.ritual.timer 0

#Checkout Loops
#PORTAL RITUAL
execute if entity @s[tag=R.ritual.portal] run function raph:rituals/checkout/portal

#BOOM RITUAL
execute if entity @s[tag=R.ritual.boom] run function raph:rituals/checkout/boom

#AMPLIFY RITUAL
execute if entity @s[tag=R.ritual.amplify] run function raph:rituals/checkout/amplify
