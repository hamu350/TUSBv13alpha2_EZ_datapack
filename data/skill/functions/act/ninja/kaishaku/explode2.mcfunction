
### 介錯サヨナラ処理２

function makeup:skill/act/ninja/kaishaku/explode2
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomNameVisible:true,CustomName:'{"translate":"グワーッ！","color":"red","bold":true}',Motion:[0d,0.35d,0d],PortalCooldown:20,Tags:[CooldownRequired],Invisible:true,Invulnerable:true,Small:true}

#ダメージ
execute if entity @s[scores={Kaishaku=0..10}] run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"介錯",Level:1}].Damage
execute if entity @s[scores={Kaishaku=100..}] run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"介錯",Level:2}].Damage
execute store result score _ Calc run data get storage skill: Damage.Physical

###爆発ダメージ = 固定ダメージ + HPMax / 5 ジッサイツヨイ
scoreboard players operation _ HPMax = @s HPMax
scoreboard players set _ _ 5
scoreboard players operation _ HPMax /= _ _
execute store result score _ Damage run scoreboard players operation _ Calc += _ HPMax
# 範囲増加 [5→10]
execute as @e[distance=..10,tag=Enemy] run function skill:damage/apply/

#ルートテーブル削除
tag @s remove HasLootTable
