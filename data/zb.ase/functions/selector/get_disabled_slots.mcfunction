#手    脚      腿     胸     头
#1     2      4      8      16
#256   512    1024   2048   4096
#65536 131072 262144 524288 1048576

scoreboard players operation @s zb.ase_temp = @s zb.ase_slot
scoreboard players operation @s zb.ase_temp %= #2 zb.ase_const

# remove #
execute if score @s[scores={zb.ase_times=0}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[主手*]","color":"green","hoverEvent":{"action":"show_text","value":"关闭主手放置&替换锁定\\n不影响取下"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_mainhand_f"}}'
execute if score @s[scores={zb.ase_times=0}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[主手*]","color":"gray","hoverEvent":{"action":"show_text","value":"开启主手放置&替换锁定\\n不影响取下"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_mainhand_t"}}'

execute if score @s[scores={zb.ase_times=1}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭靴子交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_feet_f"}}'
execute if score @s[scores={zb.ase_times=1}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启靴子交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_feet_t"}}'

execute if score @s[scores={zb.ase_times=2}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭腿部交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_legs_f"}}'
execute if score @s[scores={zb.ase_times=2}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启腿部交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_legs_t"}}'

execute if score @s[scores={zb.ase_times=3}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭胸甲交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_chest_f"}}'
execute if score @s[scores={zb.ase_times=3}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启胸甲交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_chest_t"}}'

execute if score @s[scores={zb.ase_times=4}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"green","hoverEvent":{"action":"show_text","value":"关闭头部交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_head_f"}}'
execute if score @s[scores={zb.ase_times=4}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"gray","hoverEvent":{"action":"show_text","value":"开启头部交互锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/remove_head_t"}}'

# replace #
execute if entity @s[scores={zb.ase_times=7}] run data modify storage zb:ase NbtMenu append value '{"text":"\\n禁止替换&取下","color":"yellow"}'

execute if score @s[scores={zb.ase_times=8}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[主手] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭主手替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_mainhand_f"}}'
execute if score @s[scores={zb.ase_times=8}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[主手] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启主手替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_mainhand_t"}}'

execute if score @s[scores={zb.ase_times=9}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭靴子替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_feet_f"}}'
execute if score @s[scores={zb.ase_times=9}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启靴子替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_feet_t"}}'

execute if score @s[scores={zb.ase_times=10}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭腿部替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_legs_f"}}'
execute if score @s[scores={zb.ase_times=10}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启腿部替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_legs_t"}}'

execute if score @s[scores={zb.ase_times=11}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭胸甲替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_chest_f"}}'
execute if score @s[scores={zb.ase_times=11}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启胸甲替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_chest_t"}}'

execute if score @s[scores={zb.ase_times=12}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"green","hoverEvent":{"action":"show_text","value":"关闭头部替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_head_f"}}'
execute if score @s[scores={zb.ase_times=12}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"gray","hoverEvent":{"action":"show_text","value":"开启头部替换&取下锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/replace_head_t"}}'

# set #
execute if entity @s[scores={zb.ase_times=15}] run data modify storage zb:ase NbtMenu append value '{"text":"\\n禁止放置      ","color":"yellow"}'

execute if score @s[scores={zb.ase_times=16}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[主手] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭主手放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_mainhand_f"}}'
execute if score @s[scores={zb.ase_times=16}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[主手] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启主手放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_mainhand_t"}}'

execute if score @s[scores={zb.ase_times=17}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭靴子放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_feet_f"}}'
execute if score @s[scores={zb.ase_times=17}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[靴子] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启靴子放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_feet_t"}}'

execute if score @s[scores={zb.ase_times=18}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭腿部放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_legs_f"}}'
execute if score @s[scores={zb.ase_times=18}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[腿部] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启腿部放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_legs_t"}}'

execute if score @s[scores={zb.ase_times=19}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"green","hoverEvent":{"action":"show_text","value":"关闭胸甲放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_chest_f"}}'
execute if score @s[scores={zb.ase_times=19}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[胸甲] ","color":"gray","hoverEvent":{"action":"show_text","value":"开启胸甲放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_chest_t"}}'

execute if score @s[scores={zb.ase_times=20}] zb.ase_temp matches 1 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"green","hoverEvent":{"action":"show_text","value":"关闭头部放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_head_f"}}'
execute if score @s[scores={zb.ase_times=20}] zb.ase_temp matches 0 run data modify storage zb:ase NbtMenu append value '{"text":"[头部]","color":"gray","hoverEvent":{"action":"show_text","value":"开启头部放置锁定"},"clickEvent":{"action":"run_command","value":"/function zb.ase:nbt/disabled_slots/set_head_t"}}'

# opteration #
scoreboard players operation @s zb.ase_slot /= #2 zb.ase_const
scoreboard players add @s zb.ase_times 1

# recursion #
execute if score @s zb.ase_times matches ..20 run function zb.ase:selector/get_disabled_slots