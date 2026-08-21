#> tusb_ez:enemy/level_cap/
#
# レベル500をキャップにする
#
# @within functions enemy:spawn/apply_status/status/*

scoreboard players set $EZ__ _ 500
scoreboard players operation $EZ_ _ = @s Level
scoreboard players operation $EZ_ _ < $EZ__ _
