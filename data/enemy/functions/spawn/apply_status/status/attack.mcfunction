scoreboard players set _ _ 100
### 物理攻撃力を計算する
# 追加： レベルキャップ実装
function tusb_ez:enemy/level_cap/
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 0.5
scoreboard players operation _ Calc *= $EZ_ _
scoreboard players operation _ Calc /= _ _
execute store result score @s Attack run scoreboard players add _ Calc 2
### 投射物の攻撃力適用
execute store result entity @s[type=#arrows,scores={Attack=1..}] damage double 1 run scoreboard players get @s Attack
tag @s[type=#entity:projectiles,type=!#arrows,scores={Attack=1..}] add DamageProjectile
### 物理攻撃力をAttributeに保存する
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s Attack

# 追加： 後処理
function tusb_ez:enemy/level_cap/reset
