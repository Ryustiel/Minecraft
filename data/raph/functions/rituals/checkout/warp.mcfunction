
#adding temporary failure tag
tag @s add R.ritual.checkout.fail

#test (purple lines then black pieces)
execute if block ~2 ~ ~ purple_carpet if block ~3 ~ ~ purple_carpet if block ~-2 ~ ~ purple_carpet if block ~-3 ~ ~ purple_carpet if block ~ ~ ~2 purple_carpet if block ~ ~ ~3 purple_carpet if block ~ ~ ~-2 purple_carpet if block ~ ~ ~-3 purple_carpet if block ~2 ~ ~2 black_carpet if block ~-2 ~ ~2 black_carpet if block ~2 ~ ~-2 black_carpet if block ~-2 ~ ~-2 black_carpet run tag @s remove R.ritual.checkout.fail


#[R.ritual.checkout.fail] when failed; [!R.ritual.checkout.fail] when successful

execute as @s[tag=R.ritual.checkout.fail] at @s run say black nope smoke
execute as @s[tag=!R.ritual.checkout.fail] at @s run say summon structure

