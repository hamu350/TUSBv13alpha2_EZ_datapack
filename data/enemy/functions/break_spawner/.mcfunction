#スポナー破壊時
# 初破壊時にマルチ補正
    execute unless entity @s[tag=MultiplyInit] unless entity @e[type=item,nbt={Item:{tag:{ExplodedLodestone:1b}}}] if entity @e[distance=..2,type=item,nbt={Item:{tag:{DamageItem:1b}}}] run function enemy:break_spawner/multiply_count

#採掘時はドロップなし 採掘時以外はロードストーンがドロップ
#採掘時と爆破時で分岐
execute unless entity @e[type=item,nbt={Item:{tag:{ExplodedLodestone:1b}}}] run function enemy:break_spawner/enemy_count
execute as @e[type=item,nbt={Item:{tag:{ExplodedLodestone:1b}}}] run function enemy:break_spawner/exploded

#設置したスポナーにデータをmergeする
# 追加： 破壊時に1/2でスポーン
data modify block ~ ~ ~ {} merge from entity @s item.tag.Spawner
execute store result score _ Random run function calc:random
scoreboard players set _ _ 2
scoreboard players operation _ Random %= _ _
execute if entity @s if score _ Random matches 0 run data modify block ~ ~ ~ Delay set value 0s
tag @s remove Failed
