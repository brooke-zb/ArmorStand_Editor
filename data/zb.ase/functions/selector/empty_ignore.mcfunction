# play click sound #
function zb.ase:echo/click_sound
 
# tellraw #
title @s title {"text":""}
title @s subtitle {"text":"已清空盔甲架忽略列表","color":"green"}

# remove tag #
tag @e[type=armor_stand,tag=zb.ase_ignore] remove zb.ase_ignore