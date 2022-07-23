function raph:rituals/effects/warp_tpin

#Si aucun portail très proche, portail le plus proche
execute unless entity @e[tag=R.ritual.portal, distance=..50] if entity @e[tag=R.ritual.portal, distance=..800] run tp @s @e[tag=R.ritual.portal, limit=1, sort=nearest]

#Si portail très proche et hors portail, portail le plus éloigné (résonance)
execute if entity @e[tag=R.ritual.portal, distance=..50] unless entity @e[tag=R.ritual.portal, distance=..5] run tp @s @e[tag=R.ritual.portal, limit=1, sort=furthest]

#Si dans portail, portail le plus proche
execute if entity @e[tag=R.ritual.portal, distance=..5] run tp @s @e[tag=R.ritual.portal, limit=1, distance=6.., sort=nearest]

execute at @s run spreadplayers ~ ~ 7 7 false @s

execute at @s run function raph:rituals/effects/warp_tpout