# modify storage #
data modify storage zb:ase Pose set value [0f,0f,0f]

execute if score @s zb.ase_opt_part matches 1 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Head
execute if score @s zb.ase_opt_part matches 2 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Body
execute if score @s zb.ase_opt_part matches 3 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftArm
execute if score @s zb.ase_opt_part matches 4 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightArm
execute if score @s zb.ase_opt_part matches 5 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftLeg
execute if score @s zb.ase_opt_part matches 6 run data modify storage zb:ase Pose set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightLeg

execute store result storage zb:ase Pose[0] float 1 run scoreboard players get @s zb.ase_pose_x

# special case #
execute if score @s zb.ase_opt_part matches 1..2 if score @s zb.ase_pose_x matches 0 run data modify storage zb:ase Pose[0] set value 0.001f

# modify nbt #
execute if score @s zb.ase_opt_part matches 1 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Head set from storage zb:ase Pose
execute if score @s zb.ase_opt_part matches 2 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.Body set from storage zb:ase Pose
execute if score @s zb.ase_opt_part matches 3 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftArm set from storage zb:ase Pose
execute if score @s zb.ase_opt_part matches 4 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightArm set from storage zb:ase Pose
execute if score @s zb.ase_opt_part matches 5 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.LeftLeg set from storage zb:ase Pose
execute if score @s zb.ase_opt_part matches 6 run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Pose.RightLeg set from storage zb:ase Pose

# reset score #
scoreboard players reset @s zb.ase_pose_x

# call menu #
function zb.ase:echo/edit_pose