#> tusb_ez:main/load_once
#
# 追加：EZ用load_once

### 追加： 難易度カラーチーム
team add VeryEasy {"text":"とても簡単"}
team modify VeryEasy color aqua
team add Easy {"text":"とても簡単"}
team modify Easy color green
team add Normal {"text":"とても簡単"}
team modify Normal color yellow
team add Hard {"text":"とても簡単"}
team modify Hard color red
team add VeryHard {"text":"とても簡単"}
team modify VeryHard color light_purple
team add Untenable {"text":"????"}
team modify Untenable color dark_purple


### 追加： 追加スコアボード

# 追加： EZ_TIPS
scoreboard objectives add EZTipsSuppressFlag dummy {"text":"EZ_TIPS抑制フラグ"}
scoreboard objectives add EZTipsSupTrigger trigger {"text":"EZ_TIPS抑制トリガー"}

# 追加： 釣りした回数
scoreboard objectives add FishingCount dummy {"text": "釣りした回数"}

# 追加： アイランドチェックモード切り替え
scoreboard objectives add IslandCheckMode dummy {"text":"アイランドチェックモード切り替え"}


### 追加：いろいろ設置

# 追加： エンドポータルフレームのブロックディスプレイ設置
function settings:alpha_debug/frame/

# 追加： 頂上のディスペンサー設置
execute in area:flying_island positioned -726 186 -807 run forceload add ~ ~
execute in area:flying_island positioned -727 186 -807 run forceload add ~ ~
execute in area:flying_island positioned -727 186 -807 run setblock ~ ~ ~ minecraft:warped_sign[rotation=4]{GlowingText: 1b, Color: "black", Text4: '{"text":""}', Text3: '{"text":"入れてもいいのよ？"}', Text2: '{"text":"メガトンエメラルド"}', Text1: '{"text":"たーっくさん"}'}
execute in area:flying_island positioned -726 186 -807 run setblock ~ ~ ~ minecraft:dropper[facing=west]{CustomName:'{"bold":true,"color":"dark_green","text":"頂上のディスペンサー"}'} replace
execute in area:flying_island run forceload remove all

### TIPSデータ
function settings:player/tips

### スキルデータロード
function skill:data/
function skill:load/

### EZ導入フラグを立てる
data modify storage tusb_ez: load_once set value true
