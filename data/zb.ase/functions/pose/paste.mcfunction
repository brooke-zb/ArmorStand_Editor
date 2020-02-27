# copy to clipboard #
execute if score @s zb.ase_opt_part matches 1 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Head set from storage zb:ase PoseClipBoard
execute if score @s zb.ase_opt_part matches 2 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Body set from storage zb:ase PoseClipBoard
execute if score @s zb.ase_opt_part matches 3 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftArm set from storage zb:ase PoseClipBoard
execute if score @s zb.ase_opt_part matches 4 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightArm set from storage zb:ase PoseClipBoard
execute if score @s zb.ase_opt_part matches 5 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftLeg set from storage zb:ase PoseClipBoard
execute if score @s zb.ase_opt_part matches 6 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightLeg set from storage zb:ase PoseClipBoard

# title #
title @s title {"text":""}
title @s subtitle [{"text":"[剪贴板] ","color":"dark_green","bold":true},{"text":"已粘贴剪贴板内容","color":"green"}]

# call menu #
function zb.ase:echo/edit_pose