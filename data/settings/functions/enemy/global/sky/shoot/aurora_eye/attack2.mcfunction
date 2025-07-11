#Function
# 対象の最大HPの25%を与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,DeathCause:'[{"translate":"%2$sは%1$sを、オーロラで包み込んで消し飛ばした。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.25 run attribute @s generic.max_health get 1
    function score_damage:api/attack
    scoreboard players set @s ProjectileTime -10
# 対象の最大MPの5%を減らす
# 追加： MPを減らさない
    # scoreboard players set _ MP 5
    # scoreboard players set _ _ 100
    # scoreboard players operation _ MP *= @s MPMax
    # scoreboard players operation _ MP /= _ _
    # execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    # execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 対象にかけられているバフを一部解除する
    effect clear @s minecraft:haste
    effect clear @s minecraft:resistance
    effect clear @s minecraft:fire_resistance
    effect clear @s minecraft:night_vision
