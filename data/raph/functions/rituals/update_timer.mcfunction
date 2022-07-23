#update nearby rituals timers.
execute at @s run scoreboard players add @s R.ritual.timer 1

#triggers timerout function.
execute as @s[scores={R.ritual.timer=30..}] at @s run function raph:rituals/generic_ritual

#timer resets in generic_checkout