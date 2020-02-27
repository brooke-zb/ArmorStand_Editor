# play click sound #
function zb.ase:echo/click_sound

# edit tag #
execute if entity @e[tag=zb.ase_selected,type=armor_stand] run tag @e[tag=zb.ase_edit,type=armor_stand] remove zb.ase_edit
execute if entity @e[tag=zb.ase_selected,type=armor_stand] run tag @e[tag=zb.ase_selected,type=armor_stand] add zb.ase_edit
scoreboard players set @e[tag=zb.ase_edit,type=armor_stand] zb.ase_cd 0

# special tag #
tag @s remove zb.ase_edit_nbt

# show editor menu #
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n==================== ","color":"gray"},{"text":"盔甲架编辑器","color":"green","bold":true},{"text":" ======================\n","color":"gray"},{"text":"\n[属性编辑]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击进入属性编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_nbt"}},{"text":"    "},{"text":"[Pose编辑]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击进入Pose角度编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_pose"}},{"text":"    "},{"text":"[获取盔甲架]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击获取目标盔甲架的物品形态"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/copy_to_item"}},{"text":"\n\n[装备编辑]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击进入装备编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_equipment"}},{"text":"    "},{"text":"[空间编辑]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击进入位置、朝向编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_locate"}},{"text":"\n\n[退出编辑]","color":"red","hoverEvent":{"action":"show_text","value":"退出对该盔甲架的编辑"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/exit_edit"}},{"text":"    "},{"text":"[退出编辑并忽略]","color":"red","hoverEvent":{"action":"show_text","value":"退出对该盔甲架的编辑并加入忽略列表"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/exit_edit_and_ignore"}},{"text":"\n\n=====================================================","color":"gray"}]