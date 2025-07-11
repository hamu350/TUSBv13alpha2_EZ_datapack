##############################
### 毎ティック処理
##############################

###パーティクル表示判定
function main:particle/update_tag

### 1tick遅れ処理
execute as @e[tag=DelayedTask] at @s run function main:task/delayed

### バースト処理
execute if score $World Burst matches -1 run function skill:burst/condition

### プレイヤーtick
execute as @a at @s run function player:tick

### スポナーカート空気時処理
execute as @e[tag=SpawnerHolder] at @s unless block ~ ~ ~ minecraft:spawner run function enemy:break_spawner/

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

### 召喚済み単回スポナー削除
kill @e[tag=OneTimeSpawner,nbt={SpawnData:{entity:{id:"tusb_mob:empty"}}}]

### 1秒処理
scoreboard players add $Tick Count 1
execute if score $Tick Count matches 20.. run function main:one_second

### エンティティAI分岐
execute as @e[tag=HasAI] at @s run function enemy:ai/tick

### 存在する限り毎tick処理呼び出し
execute as @e[scores={NativeFlag=1..}] at @s run function main:task/native

### Mob tick
execute as @e[tag=Mob] at @s run function enemy:tick

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown

### エンティティ削除
execute as @e[tag=Garbage] run function entity:garbage_collection

### 通常世界脅威島 チェストの上の石は壊れない
execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] if block 39 7 -556 air if block 39 6 -556 chest run setblock 39 7 -556 infested_deepslate

### 固定村人 奈落落ち回避
execute as @e[type=villager,tag=!Mob] at @s if entity @s[y=-51,dy=50] run function area:villager_point/tp

### 追加： hamu_check
execute unless data storage tusb_player: {hamu_350:true} in area:flying_island positioned -789 96 -773 as @e[sort=nearest,distance=..3,limit=1,type=item] run function tusb_ez:check_hamu
