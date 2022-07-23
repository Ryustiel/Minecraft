
#adding temporary failure tag
tag @s add R.ritual.checkout.fail

#inner circle lines; purple circle lines; outer circle lines and artifacts; corners
execute if block ~1 ~1 ~3 black_carpet if block ~ ~1 ~3 black_carpet if block ~-1 ~1 ~3 black_carpet if block ~1 ~1 ~-3 black_carpet if block ~ ~1 ~-3 black_carpet if block ~-1 ~1 ~-3 black_carpet if block ~3 ~1 ~1 black_carpet if block ~3 ~1 ~ black_carpet if block ~3 ~1 ~-1 black_carpet if block ~-3 ~1 ~1 black_carpet if block ~-3 ~1 ~ black_carpet if block ~-3 ~1 ~-1 black_carpet if block ~-2 ~1 ~5 purple_carpet if block ~-1 ~1 ~5 purple_carpet if block ~ ~1 ~5 purple_carpet if block ~1 ~1 ~5 purple_carpet if block ~2 ~1 ~5 purple_carpet if block ~-2 ~1 ~-5 purple_carpet if block ~-1 ~1 ~-5 purple_carpet if block ~ ~1 ~-5 purple_carpet if block ~1 ~1 ~-5 purple_carpet if block ~2 ~1 ~-5 purple_carpet if block ~5 ~1 ~-2 purple_carpet if block ~5 ~1 ~-1 purple_carpet if block ~5 ~1 ~ purple_carpet if block ~5 ~1 ~1 purple_carpet if block ~5 ~1 ~2 purple_carpet if block ~-5 ~1 ~-2 purple_carpet if block ~-5 ~1 ~-1 purple_carpet if block ~-5 ~1 ~ purple_carpet if block ~-5 ~1 ~1 purple_carpet if block ~-5 ~1 ~2 purple_carpet if block ~-3 ~1 ~7 black_carpet if block ~-2 ~1 ~7 purple_carpet if block ~-1 ~1 ~7 black_carpet if block ~ ~1 ~7 magenta_carpet if block ~ ~1 ~8 magenta_carpet if block ~1 ~1 ~7 black_carpet if block ~2 ~1 ~7 black_carpet if block ~3 ~1 ~7 black_carpet if block ~-3 ~1 ~-7 black_carpet if block ~-2 ~1 ~-7 black_carpet if block ~-1 ~1 ~-7 black_carpet if block ~ ~1 ~-7 magenta_carpet if block ~ ~1 ~-8 magenta_carpet if block ~1 ~1 ~-7 black_carpet if block ~2 ~1 ~-7 purple_carpet if block ~3 ~1 ~-7 black_carpet if block ~7 ~1 ~-3 black_carpet if block ~7 ~1 ~-2 black_carpet if block ~7 ~1 ~-1 black_carpet if block ~7 ~1 ~ magenta_carpet if block ~8 ~1 ~ magenta_carpet if block ~7 ~1 ~1 black_carpet if block ~7 ~1 ~2 purple_carpet if block ~7 ~1 ~3 black_carpet if block ~-7 ~1 ~-3 black_carpet if block ~-7 ~1 ~-2 purple_carpet if block ~-7 ~1 ~-1 black_carpet if block ~-7 ~1 ~ magenta_carpet if block ~-8 ~1 ~ magenta_carpet if block ~-7 ~1 ~1 black_carpet if block ~-7 ~1 ~2 black_carpet if block ~-7 ~1 ~3 black_carpet run tag @s remove R.ritual.checkout.fail

#[R.ritual.checkout.fail] when failed; [!R.ritual.checkout.fail] when successful

execute as @s[tag=R.ritual.checkout.fail, tag=R.ritual.portal] as @s at @s run say self destruct
execute as @s[tag=!R.ritual.checkout.fail, tag=R.ritual.portal] as @s at @s run say stay the same

execute as @s[tag=R.ritual.checkout.fail, tag=!R.ritual.portal] as @s at @s run say black nope smoke
execute as @s[tag=!R.ritual.checkout.fail, tag=!R.ritual.portal] as @s at @s run say summon structure
