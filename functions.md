# functions


## area:system/island_capture➝area:system/island_remove

・島攻略時にその島のフレームにあるマーカーとブロックディスプレイのタグを外すを追加


## debug:tusb_memory_plus/load_skill/common1

・追加スキル用

## debug:tusb_memory_plus/load_skill/ninja

・追加スキル用

## effects:too_bad_effect

・super_doomをデバリア無効10カウントに変更


## effects:(各種特殊状態異常)/cure

・スーパーデバリア以外で防げる特殊状態異常が治った際、その特殊状態異常に対応するデバリアを追加で5秒得る


## enemy:break_spawner/

・破壊時に1/2でディレイリセットを追加


## enemy:spawn/apply_status/mob

・属性値がマイナスだったら0にするを追加


## enemy:natural_spawn_modify_level

・エリートモブ出さないように変更


## item:enchant/enchant/success/init

・刻印Loreを追加


## item:enchant/engraving/loop

・NewEngravingというEngravingを保存するNBTを追加


## item:functions/grindstone/内のfunction

・item:enchant/enchanting_table/内のfunctionを砥石に変換したfunction


## item:grindstone/enchant/check

・item:enchant/enchant/checkを砥石に変換

・魔石のtierとアイテムのtierが同じか確認する function ## item:grindstone/enchant/check_tier へ続く


## item:grindstone/enchant/remove_and_add

・EnchantmentsとLore、AttributeModifiersを初期化

・item:enchant/enchant/success/init と似た構造

・確定エンチャ枠を付与するための loot ## item:enchant/grindstone に続く

・刻印Loreを追加するための function ## item:grindstone/enchant/lore/ に続く


## item:grindstone/enchant/lore/

・刻印Lore用EnchantID分岐

## item:grindstone/enchant/lore/内の刻印名function

・刻印Lore用tier分岐


## item:tusb_memory/loop

・エラー吐いていたのを直した(問題ないかは知らん)


## job:exp/get

・経験値取得距離制限を撤廃


## job:level_up/acquirement/level

・追加スキル用追加枠(lv11)

## main:load_once

・IslandCheckMode (アイランドチェックモード切り替え)スコアボードを追加

・EZ_TIPS用のスコアボード二種 EZTipsSuppressFlag EZTipsSupTrigger 追加 

・FishingCount (釣りした回数)スコアボードを追加

・難易度カラーチーム VeryEasy Easy Normal Hard VeryHard Untenable を追加

## main:load

・# EZが入ってなかったらEZload_onceを起動する処理を追加


## main:one_second

・呪詛

・ペイル時に足元パーティクル

・mamorukun_neo頭フラグチェック


## main:tick

・hamu350頭フラグチェック


## makeup:job/exp/get

・経験値範囲制限無効


## makeup:skill/burst/hunter/tick

・狩人バーストtickパーティクル

## player:game_settings/show_world_info/flying_island/

・島情報クリックイベントを追加、難易度別に色分け

## player:game_settings/show_world_info/skylands/page_(1-5)

・島情報クリックイベントを追加、難易度別に色分け


## player:game_settings/triggered

・ChangeSettings の400-599の島情報functionを起動するのを追加


## player:tips/show_ez

・EZ用tips表示

## player:tips/show


・function ## player:tips/show_ezを追加


## player:tips/suppress_ez

・EZ用tips削除


## settings:alpha_debug/container/flying_island

・頂上のディスペンサー設置


## settings:alpha_debug/container/skylands

・元の拠点作成キットの位置に深層岩

・拠点作成キット輸送+チェスト

・額縁

・松明の量を2倍に

・始まりの鍵チェストを拠点作成キットに変更


## settings:alpha_debug/frame/

・フレームを発光させるためのディスプレイ設置(全ディメンション)


## settings:alpha_debug/frame/flying_island

・フレームを発光させるためのディスプレイ設置(飛空島)


## settings:alpha_debug/frame/skylands

・フレームを発光させるためのディスプレイ設置(通常世界)


## settings:alpha_debug/

・function ## settings:alpha_debug/frame/ を起動するのを追加


## settings:enemy/内のfunction

・属性値弱体化

➝詳細は実際に見てもろて

・罠産のアンノウンmobからお楽しみメモリスターRank1-3(3EX)が落ちるように

・おろちーのMP吸収を一部無効化

・しゃべちーの跳躍無効を消去


## skill:act/black_mage/mana_refresh/act0

・MP回復量2倍固定


## skill:act/common/islandcheck/内のfunction

・アイランドチェック

・向いた方向にあるマーカーを手前にコピー

➝データとって分岐してテキストを出す(## skill:act/common/islandcheck/data)


## skill:act/common/show_tips/act0

・スニーク時に周りのプレイヤーにも出す

・function ## makeup:skill/act/common/show_tips/act0 がよくわからないのでコメントアウト


## skill:act/common/weakness_paint/内のfunction

・狩人バースト用lv3追加


## skill:act/hunter/blast_spark/tick

・飛距離増加


## skill:act/hunter/decelerate_trap/apply

・移動速度減少増加 変更前[0 1 2]


## skill:act/ninja/choyaku/jump

・範囲UP(6m→9m)

## skill:act/ninja/issen/tick


・範囲UP(3m→4m)(2.5m→3.5m)


## skill:act/ninja/kaishaku/explode2

・範囲増加 (5→10)


## skill:act/ninja/kaishaku/player_tick

・範囲増加 (10→15)


## skill:act/ninja/kuusou/act0

・スカイウォークfunctionを起動


## skill:act/ninja/tsuremai/attack

・倍率を変更(0.334→0.112)

・連舞レベル*3=攻撃力上昇レベル


## skill:burst/hunter/内のfunction

・32mプレイヤーが8m以内にいる敵に減速、ウィークペイント2(2秒)、サンクチュアリ3を付与


## skill:burst/white_mage/tick

・常時スーパーデバリア+再生4


## skill:burst/break

・狩人

・白魔説明変更


## skill:burst/force_finish

・狩人

・白魔説明変更


## skill:burst/tick

・狩人

・白魔のバースト分岐function変更


## skill:data/black_mage

・火力アッパー

・詳細はそっちで


## skill:data/common

・TIPS表示のCD減少

・アイランドチェック追加


## skill:data/hunter

・火力アッパー

・詳細はそっちで


## skill:data/ninja

・火力アッパー

・詳細はそっちで


## skill:load/common

・アイランドチェック追加


## skill:load/job

・空走追加


## skill:practice/act/common

・アイランドチェック追加


## skill:practice/act/ninja

・空走追加


## skill:trigger/set/remove_lore

・追加NBT SkillLore も消す


## skill:trigger/set/set

・追加NBT SkillLore を経由してLoreを付与


## skill:update_mp/wait

・マナリフレッシュの効果が切れた通知を追加

・MP割合回復(2%)に変更


## tusb_ez:arisui

・asrisui頭ゲット


## tusb_ez:check_hamu_2

・はむチャレンジ2

・CustomModelData:2であることを検知


## tusb_ez:check_hamu

・はむチャレンジ

・minecraft:netherite_axeであることを検知


## tusb_ez:fishing_rod_hooked

・FishingCountが300時に advancements ## advancement:tusb_ez/fishing_count を起動

・FishingCountを増加


## tusb_ez:hamu350

・advancements ## aadvancement:tusb_ez/hamu_350 を起動

・報酬summon


## tusb_ez:mamorukun_neo

・mamorukun_neo頭ゲット


## tusb_ez:me_check

・mamorukun_neo頭ゲットできるかな


## tutorial_alpha:grindstone/act0

・砥石チュートリアル変更


## tutorial_alpha:skill/burst/act1

・バースト内容変更

## tusb_ez:main/load_once

・TUSB_EZ導入用初期処理

## tusb_ez:player/functions/leave_game

・TUSB_EZ途中導入処理
