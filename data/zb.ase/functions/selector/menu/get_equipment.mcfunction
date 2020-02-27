# reset storage #
data modify storage zb:ase EquipmentMenu set value []

#=====================================================
#所有 [替换]       [清除]
#头部 [替换] [获取] [清除]
#胸部 [替换] [获取] [清除]
#腿部 [替换] [获取] [清除]
#脚部 [替换] [获取] [清除]
#主手 [替换] [获取] [清除]
#副手 [替换] [获取] [清除]
#=====================================================

# store nbt #
data modify storage zb:ase EquipmentMenu append value '{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n================= \\u00a7a盔甲架编辑器-装备\\u00a77 ======================\\n","color":"gray"}'
data modify storage zb:ase EquipmentMenu append value '[{"text":""},{"text":"\\n所有   \\u00a7r ","color":"aqua","bold":true},{"text":"[克隆]","color":"blue","hoverEvent":{"action":"show_text","value":"将自己装备一一复制到\\n目标盔甲架对应槽位"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_all"}},{"text":"          .","color":"dark_gray"},{"text":"[清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除目标盔甲架所有装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_all"}}]'
#head
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n头部     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架头部装备\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_head"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架头部装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_head"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架头部装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_head"}}]'
#chest
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n胸甲     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架胸甲装备\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_chest"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架胸甲装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_chest"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架胸甲装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_chest"}}]'
#legs
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n腿部     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架腿部装备\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_legs"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架腿部装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_legs"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架腿部装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_legs"}}]'
#feet
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n靴子     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架靴子装备\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_feet"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架靴子装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_feet"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架靴子装备"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_feet"}}]'
#mainhand
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n主手     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架主手物品\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_mainhand"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_mainhand"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_mainhand"}}]'
#offhand
data modify storage zb:ase EquipmentMenu append value '[{"text":"\\n副手     ","color":"yellow"},{"text":"[替换]","color":"green","hoverEvent":{"action":"show_text","value":"将盔甲架副手物品\\n替换为自己主手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/replace_offhand"}},{"text":"  [获取]","color":"gold","hoverEvent":{"action":"show_text","value":"获取盔甲架副手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/get_offhand"}},{"text":"  [清除]","color":"red","hoverEvent":{"action":"show_text","value":"清除盔甲架副手物品"},"clickEvent":{"action":"run_command","value":"/function zb.ase:equipment/remove_offhand"}}]'

data modify storage zb:ase EquipmentMenu append value '[{"text":""},{"text":"\\n\\n[⏎]","color":"gold","hoverEvent":{"action":"show_text","value":"返回主菜单"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/edit_menu"}},{"text":" ==================================================","color":"gray"}]'