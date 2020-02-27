# play click sound #
function zb.ase:echo/click_sound

# remove proof of installed  #
kill @e[tag=zb.ase,type=area_effect_cloud]
forceload remove 315446 -114514

# remove scoreboard #
scoreboard objectives remove zb.ase_sneak
scoreboard objectives remove zb.ase_cd
scoreboard objectives remove zb.ase_times
scoreboard objectives remove zb.ase_slot
scoreboard objectives remove zb.ase_const
scoreboard objectives remove zb.ase_temp
#scoreboard objectives remove zb.ase_opt_part
scoreboard objectives remove zb.ase_place_as
scoreboard objectives remove zb.ase_pose_x
scoreboard objectives remove zb.ase_pose_y
scoreboard objectives remove zb.ase_pose_z
scoreboard objectives remove zb.ase_rot_x
scoreboard objectives remove zb.ase_rot_y

# remove storage #
data remove storage zb:ase NbtMenu
data remove storage zb:ase PoseMenu
data remove storage zb:ase EquipmentMenu
data remove storage zb:ase LocateMenu
data remove storage zb:ase ModifyNbt
data remove storage zb:ase Pose
#data remove storage zb:ase PoseClipBoard

# remove tag #
tag @e[type=armor_stand] remove zb.ase_selected
tag @e[type=armor_stand] remove zb.ase_placed
tag @e[type=armor_stand] remove zb.ase_edit
#tag @e[type=armor_stand] remove zb.ase_ignore
tag @e[type=armor_stand] remove zb.ase_no_edit
#tag @a remove zb.ase_opt_x
#tag @a remove zb.ase_opt_y
#tag @a remove zb.ase_opt_z
#tag @a remove zb.ase_rot_x
#tag @a remove zb.ase_rot_y
#tag @a remove zb.ase_ray_eyes
#tag @a remove zb.ase_ray_feet
#tag @a remove zb.ase_edit_nbt

# echo #
tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n感谢使用！剪贴板、忽略列表等用户信息已保留！","color":"red"}