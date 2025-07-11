
###プレイヤーゲーム設定

# 1 ステータス確認 (ジョブ・レベル・経験値・(スキル)・CP)
execute if score @s ChangeSettings matches 1 run function player:game_settings/show_status

# 2 職業変更
execute if score @s ChangeSettings matches 2 in area:control_area run function job:change/dialog

# 10 パーティクル抑制
execute if score @s ChangeSettings matches 11 run function player:game_settings/tune_particle

# 11,12,13 テキスト表示位置調整
execute if score @s ChangeSettings matches 12..14 run function player:game_settings/tune_offset

# 101-105 フィールサイズ
execute if score @s ChangeSettings matches 101..105 run function skill:act/summoner/fill/set_size

# 200-399 ワールド情報
execute if score @s ChangeSettings matches 200..399 run function player:game_settings/show_world_info/

# 追加： 400-599 島情報
execute if score @s ChangeSettings matches 400..599 run function skill:act/common/islandcheck/score_set

##設定画面再表示
function player:game_settings/reshow

# 3 詳細設定表示
execute if score @s ChangeSettings matches 10..15 run function player:game_settings/show_settings

##トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings
