# play click sound #
function zb.ase:echo/click_sound

# change gamerule #
gamerule sendCommandFeedback false

# set proof of installed  #
forceload add 315446 -114514
execute unless entity @e[tag=zb.ase,type=area_effect_cloud] run summon minecraft:area_effect_cloud 315446 254 -114514 {Invulnerable:1b,Duration:2147483647,Age:-2147483648,Tags:["zb.ase"]}

# add scoreboard #
scoreboard objectives add zb.ase_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add zb.ase_pose_x dummy
scoreboard objectives add zb.ase_pose_y dummy
scoreboard objectives add zb.ase_pose_z dummy
scoreboard objectives add zb.ase_rot_x dummy
scoreboard objectives add zb.ase_rot_y dummy
scoreboard objectives add zb.ase_cd dummy
scoreboard players set @a zb.ase_cd 0
scoreboard objectives add zb.ase_times dummy
scoreboard players set @a zb.ase_times 0
scoreboard objectives add zb.ase_slot dummy
scoreboard objectives add zb.ase_const dummy
scoreboard players set #2 zb.ase_const 2
scoreboard objectives add zb.ase_temp dummy
scoreboard objectives add zb.ase_opt_part dummy
scoreboard objectives add zb.ase_place_as minecraft.used:minecraft.armor_stand

# set storage #
data modify storage zb:ase PoseClipBoard set value ["null","null","null"]

# echo #
tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n已成功安装！欢迎使用盔甲架编辑器!\n","color":"green"},{"text":"[点我查看使用说明]","color":"yellow","clickEvent":{"action":"run_command","value":"/function zb.ase:echo/show_help"},"hoverEvent":{"action":"show_text","value":"盔甲架编辑器使用说明"}}]
