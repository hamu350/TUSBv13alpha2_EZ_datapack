##############################
### ロード処理
##############################

###スコアボードが作られていなければスコアボードを初期化する
scoreboard objectives add Count dummy {"text":"カウント"}
execute unless score $Tick Count matches 0.. run function main:load_once

# EZが入ってなかったらEZload_onceを起動
execute unless data storage tusb_ez: {load_once:true} run function tusb_ez:main/load_once
