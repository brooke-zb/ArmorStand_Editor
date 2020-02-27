# reset storage #
data modify storage zb:ase LocateMenu set value []

# set tag #
tag @s[tag=!zb.ase_opt_pos,tag=!zb.ase_opt_rotation] add zb.ase_opt_pos

# store nbt #
execute if entity @s[tag=zb.ase_opt_pos] run data modify storage zb:ase LocateMenu append value '[{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n================= \\u00a7a盔甲架编辑器-空间\\u00a77 ======================\\n\\n","color":"gray"},{"text":"      "},{"text":"[位置]  ","color":"yellow","bold":true},{"text":"[朝向]","color":"gray","hoverEvent":{"action":"show_text","value":"切换为朝向编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/switch_to_rotation"}}]'
execute if entity @s[tag=zb.ase_opt_rotation] run data modify storage zb:ase LocateMenu append value '[{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n================= \\u00a7a盔甲架编辑器-空间\\u00a77 ======================\\n\\n","color":"gray"},{"text":"      "},{"text":"[位置]","color":"gray","hoverEvent":{"action":"show_text","value":"切换为位置编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:locate/switch_to_pos"}},{"text":"  [朝向]","color":"yellow","bold":true}]'

execute if entity @s[tag=zb.ase_opt_pos] run function zb.ase:selector/get_pos
execute if entity @s[tag=zb.ase_opt_rotation] run function zb.ase:selector/get_rotation

data modify storage zb:ase LocateMenu append value '[{"text":""},{"text":"\\n\\n[⏎]","color":"gold","hoverEvent":{"action":"show_text","value":"返回主菜单"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_menu"}},{"text":" ==================================================","color":"gray"}]'