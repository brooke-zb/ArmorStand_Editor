# reset storage #
data modify storage zb:ase NbtMenu set value []

#=====================================================
#显示手臂: bool    隐藏底盘: bool
#无敌:    bool    发光:    bool
#小型:    bool    Marker: bool
#着火:    bool    隐形:    bool
#显示名字  str [E]
#锁定槽位    [全部开启]    [全部关闭]
#  防止取除  [头部] [胸甲] [腿部] [靴子] [主手]
#  防止替换  [头部] [胸甲] [腿部] [靴子] [主手]
#  防止放置  [头部] [胸甲] [腿部] [靴子] [主手]
#=====================================================

# store nbt #
data modify storage zb:ase NbtMenu append value '{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n================= \\u00a7a盔甲架编辑器-属性\\u00a77 ======================\\n\\n","color":"gray"}'

execute if data entity @s {ShowArms:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"显示手臂:    ","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/show_arms"}}]'
execute if data entity @s {ShowArms:0b} run data modify storage zb:ase NbtMenu append value '[{"text":"显示手臂:    ","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/show_arms"}}]'

execute if data entity @s {NoBasePlate:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  隐藏底盘:   \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/no_base_plate"}}]'
execute if data entity @s {NoBasePlate:0b} run data modify storage zb:ase NbtMenu append value '[{"text":"  隐藏底盘:   \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/no_base_plate"}}]'

execute if data entity @s {Invulnerable:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n无敌:        \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/invulnerable"}}]'
execute if data entity @s {Invulnerable:0b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n无敌:        \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/invulnerable"}}]'

execute if data entity @s {Glowing:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  发光:        ","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/glowing"}}]'
execute unless data entity @s {Glowing:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  发光:        ","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/glowing"}}]'

execute if data entity @s {Small:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n小型:        \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/small"}}]'
execute if data entity @s {Small:0b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n小型:        \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/small"}}]'

execute if data entity @s {Marker:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  Marker:   \\u00a78\\u00a7l.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/marker"}}]'
execute unless data entity @s {Marker:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  Marker:   \\u00a78\\u00a7l.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/marker"}}]'

execute unless data entity @s {Fire:-1s} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n着火:        \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/fire"}}]'
execute if data entity @s {Fire:-1s} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n着火:        \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/fire"}}]'

execute if data entity @s {Invisible:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  隐形:        ","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/invisible"}}]'
execute unless data entity @s {Invisible:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  隐形:        ","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/invisible"}}]'

execute if data entity @s {NoGravity:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n失重:        \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/no_gravity"}}]'
execute unless data entity @s {NoGravity:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"\\n失重:        \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/no_gravity"}}]'

execute if data entity @s {CustomNameVisible:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  显示名字:   \\u00a78.","color":"yellow"},{"text":"[T]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/custom_name_visible"}}]'
execute unless data entity @s {CustomNameVisible:1b} run data modify storage zb:ase NbtMenu append value '[{"text":"  显示名字:   \\u00a78.","color":"yellow"},{"text":"[F]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击切换"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/custom_name_visible"}}]'

# have custom name #
execute if data entity @s CustomName run data modify storage zb:ase NbtMenu append value '{"text":"\\n名字:","color":"yellow"}'
execute unless data entity @s CustomName run data modify storage zb:ase NbtMenu append value '{"text":"\\n无名字      \\u00a78\\u00a7l.","color":"yellow"}'
execute if data entity @s CustomName run data modify storage zb:ase NbtMenu append from entity @s CustomName
data modify storage zb:ase NbtMenu append value '{"text":"[E]","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"点击编辑名字"},"clickEvent":{"action":"suggest_command","value":"/data modify storage zb:ase CustomName set value \'{\\"text\\":\\"编辑此处\\"}\'"}}'

# get disabled slots #
execute store result score @s zb.ase_slot run data get entity @s DisabledSlots
scoreboard players set @s zb.ase_times 0
data modify storage zb:ase NbtMenu append value '[{"text":"\\n\\n\\u00a76锁定槽位      "},{"text":"[全部开启]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"点击开启所有槽位锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/all_t"}},{"text":"   "},{"text":"[全部关闭]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"点击关闭所有槽位锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/all_f"}},{"text":"\\n\\u00a7e禁止交互      "}]'
function zb.ase:selector/get_disabled_slots
scoreboard players reset @s zb.ase_slot

data modify storage zb:ase NbtMenu append value '[{"text":""},{"text":"\\n\\n[⏎]","color":"gold","hoverEvent":{"action":"show_text","value":"返回主菜单"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_menu"}},{"text":" ==================================================","color":"gray"}]'