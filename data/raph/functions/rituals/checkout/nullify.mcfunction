
#adding temporary failure tag
tag @s add R.ritual.checkout.fail

#light_gray middle circle; white outer circle
execute if block ~-2 ~ ~5 light_gray_carpet if block ~-1 ~ ~5 light_gray_carpet if block ~ ~ ~5 light_gray_carpet if block ~1 ~ ~5 light_gray_carpet if block ~2 ~ ~5 light_gray_carpet if block ~-2 ~ ~-5 light_gray_carpet if block ~-1 ~ ~-5 light_gray_carpet if block ~ ~ ~-5 light_gray_carpet if block ~1 ~ ~-5 light_gray_carpet if block ~2 ~ ~-5 light_gray_carpet if block ~5 ~ ~-2 light_gray_carpet if block ~5 ~ ~-1 light_gray_carpet if block ~5 ~ ~ light_gray_carpet if block ~5 ~ ~ light_gray_carpet if block ~5 ~ ~2 light_gray_carpet if block ~-5 ~ ~-2 light_gray_carpet if block ~-5 ~ ~-1 light_gray_carpet if block ~-5 ~ ~ light_gray_carpet if block ~-5 ~ ~1 light_gray_carpet if block ~-5 ~ ~2 light_gray_carpet if block ~-3 ~ ~7 white_carpet if block ~-2 ~ ~7 white_carpet if block ~-1 ~ ~7 white_carpet if block ~ ~ ~7 white_carpet if block ~1 ~ ~7 white_carpet if block ~2 ~ ~7 white_carpet if block ~3 ~ ~7 white_carpet if block ~-3 ~ ~-7 white_carpet if block ~-2 ~ ~-7 white_carpet if block ~-1 ~ ~-7 white_carpet if block ~ ~ ~-7 white_carpet if block ~1 ~ ~-7 white_carpet if block ~2 ~ ~-7 white_carpet if block ~3 ~ ~-7 white_carpet if block ~7 ~ ~-3 white_carpet if block ~7 ~ ~-2 white_carpet if block ~7 ~ ~-1 white_carpet if block ~7 ~ ~ white_carpet if block ~7 ~ ~1 white_carpet if block ~7 ~ ~2 white_carpet if block ~7 ~ ~3 white_carpet if block ~-7 ~ ~-3 white_carpet if block ~-7 ~ ~-2 white_carpet if block ~-7 ~ ~-1 white_carpet if block ~-7 ~ ~ white_carpet if block ~-7 ~ ~1 white_carpet if block ~-7 ~ ~2 white_carpet if block ~-7 ~ ~3 white_carpet run tag @s remove R.ritual.checkout.fail

#[R.ritual.checkout.fail] when failed; [!R.ritual.checkout.fail] when successful

execute as @s[tag=R.ritual.checkout.fail, tag=R.ritual.nullify] as @s at @s run say self destruct
execute as @s[tag=!R.ritual.checkout.fail, tag=R.ritual.nullify] as @s at @s run say stay the same

execute as @s[tag=R.ritual.checkout.fail, tag=!R.ritual.nullify] as @s at @s run say black nope smoke
execute as @s[tag=!R.ritual.checkout.fail, tag=!R.ritual.nullify] as @s at @s run say summon structure
