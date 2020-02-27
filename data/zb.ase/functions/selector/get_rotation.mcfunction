#=====================================================
#
#    [位置] [朝向]
#[X] |||||||||||| Rotation.X
#[Y] |||||||||||| Rotation.Y
#
#   [面向] [视线]
#[-1] [-0.5] [-0.1] [-0.05] [-0.01] [+0.01] [+0.05] [+0.1] [+0.5] [+1]
#=====================================================

# set tag #
execute if entity @s[tag=!zb.ase_rot_x,tag=!zb.ase_rot_y] run tag @s add zb.ase_rot_x
execute if entity @s[tag=!zb.ase_ray_eyes,tag=!zb.ase_ray_feet] run tag @s add zb.ase_ray_feet

# store nbt #

## x
execute if entity @s[tag=zb.ase_rot_x,tag=!zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":""},{"text":"\\n[偏转]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"至少保留一个角","color":"red"}}},{"text":" "}]'
execute if entity @s[tag=!zb.ase_rot_x,tag=zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":""},{"text":"\\n[偏转]","color":"gray","hoverEvent":{"action":"show_text","value":"增加对偏转角的编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_x_t"}},{"text":" "}]'
execute if entity @s[tag=zb.ase_rot_x,tag=zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":""},{"text":"\\n[偏转]","color":"red","hoverEvent":{"action":"show_text","value":"取消对偏转角的编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_x_f"}},{"text":" "}]'

scoreboard players reset @e[type=armor_stand,tag=zb.ase_edit] zb.ase_temp
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Rotation[0]
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] run function zb.ase:selector/get_rot_x

## y
execute if entity @s[tag=!zb.ase_rot_x,tag=zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":" "},{"nbt":"Rotation[0]","entity":"@e[type=armor_stand,tag=zb.ase_edit,limit=1]","color":"aqua"},{"text":"\\n[俯仰]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"至少保留一个角","color":"red"}}},{"text":" "}]'
execute if entity @s[tag=zb.ase_rot_x,tag=!zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":" "},{"nbt":"Rotation[0]","entity":"@e[type=armor_stand,tag=zb.ase_edit,limit=1]","color":"aqua"},{"text":"\\n[俯仰]","color":"gray","hoverEvent":{"action":"show_text","value":"增加对俯仰角的编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_y_t"}},{"text":" "}]'
execute if entity @s[tag=zb.ase_rot_x,tag=zb.ase_rot_y] run data modify storage zb:ase LocateMenu append value '[{"text":" "},{"nbt":"Rotation[0]","entity":"@e[type=armor_stand,tag=zb.ase_edit,limit=1]","color":"aqua"},{"text":"\\n[俯仰]","color":"green","hoverEvent":{"action":"show_text","value":"取消对俯仰角的编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_y_f"}},{"text":" "}]'

scoreboard players reset @e[type=armor_stand,tag=zb.ase_edit] zb.ase_temp
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Rotation[1]
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] run function zb.ase:selector/get_rot_y

# menu #
execute if entity @s[tag=zb.ase_ray_feet] run data modify storage zb:ase LocateMenu append value '[{"text":" "},{"nbt":"Rotation[1]","entity":"@e[type=armor_stand,tag=zb.ase_edit,limit=1]","color":"aqua"},{"text":"\\n\\n      "},{"text":"[面向眼睛]","color":"gold","hoverEvent":{"action":"show_text","value":"使目标盔甲架面向自己眼睛"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_player_eyes"}},{"text":"  "},{"text":"[面向脚部]","color":"light_purple","hoverEvent":{"action":"show_text","value":"使目标盔甲架面向自己脚部"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_player_feet"}},{"text":"  "},{"text":"[面向视线]","color":"blue","hoverEvent":{"action":"show_text","value":"使目标盔甲架朝向与自己视线方向一致"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_sight"}},{"text":"  "},{"text":"[脚部]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"将朝向指示射线原点\\n设为眼睛"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/ray_track_eyes"}},{"text":"\\n\\n[-90] ","color":"red","hoverEvent":{"action":"show_text","value":"减少90°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_90"}},{"text":"[-30] ","color":"red","hoverEvent":{"action":"show_text","value":"减少30°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_30"}},{"text":"[-10] ","color":"red","hoverEvent":{"action":"show_text","value":"减少10°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_10"}},{"text":"[-5] ","color":"red","hoverEvent":{"action":"show_text","value":"减少5°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_5"}},{"text":"[-1] ","color":"red","hoverEvent":{"action":"show_text","value":"减少1°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_1"}},{"text":"[+1] ","color":"green","hoverEvent":{"action":"show_text","value":"增加1°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_1"}},{"text":"[+5] ","color":"green","hoverEvent":{"action":"show_text","value":"增加5°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_5"}},{"text":"[+10] ","color":"green","hoverEvent":{"action":"show_text","value":"增加10°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_10"}},{"text":"[+30] ","color":"green","hoverEvent":{"action":"show_text","value":"增加30°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_30"}},{"text":"[+90]","color":"green","hoverEvent":{"action":"show_text","value":"增加90°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_90"}}]'
execute if entity @s[tag=zb.ase_ray_eyes] run data modify storage zb:ase LocateMenu append value '[{"text":" "},{"nbt":"Rotation[1]","entity":"@e[type=armor_stand,tag=zb.ase_edit,limit=1]","color":"aqua"},{"text":"\\n\\n      "},{"text":"[面向眼睛]","color":"gold","hoverEvent":{"action":"show_text","value":"使目标盔甲架面向自己眼睛"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_player_eyes"}},{"text":"  "},{"text":"[面向脚部]","color":"light_purple","hoverEvent":{"action":"show_text","value":"使目标盔甲架面向自己脚部"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_player_feet"}},{"text":"  "},{"text":"[面向视线]","color":"blue","hoverEvent":{"action":"show_text","value":"使目标盔甲架朝向与自己视线方向一致"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/facing_sight"}},{"text":"  "},{"text":"[眼睛]","color":"aqua","hoverEvent":{"action":"show_text","value":"将朝向指示射线原点\\n设为脚部"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/ray_track_feet"}},{"text":"\\n\\n[-90] ","color":"red","hoverEvent":{"action":"show_text","value":"减少90°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_90"}},{"text":"[-30] ","color":"red","hoverEvent":{"action":"show_text","value":"减少30°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_30"}},{"text":"[-10] ","color":"red","hoverEvent":{"action":"show_text","value":"减少10°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_10"}},{"text":"[-5] ","color":"red","hoverEvent":{"action":"show_text","value":"减少5°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_5"}},{"text":"[-1] ","color":"red","hoverEvent":{"action":"show_text","value":"减少1°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_reduce_1"}},{"text":"[+1] ","color":"green","hoverEvent":{"action":"show_text","value":"增加1°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_1"}},{"text":"[+5] ","color":"green","hoverEvent":{"action":"show_text","value":"增加5°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_5"}},{"text":"[+10] ","color":"green","hoverEvent":{"action":"show_text","value":"增加10°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_10"}},{"text":"[+30] ","color":"green","hoverEvent":{"action":"show_text","value":"增加30°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_30"}},{"text":"[+90]","color":"green","hoverEvent":{"action":"show_text","value":"增加90°"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/rot_add_90"}}]'