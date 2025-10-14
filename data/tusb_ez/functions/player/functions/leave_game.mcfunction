#> tusb_ez:player/functions/leave_game
#
# 追加： EZ初ログイン処理

# tellraw
tellraw @s {"translate": "TUSB_EZの導入に成功しました！","color": "green","bold": true}
tellraw @s {"translate": "追加された進捗に変更要素の説明があります！","color": "green","bold": true}

# tag付け
tag @s add EZPlayer
