# reset empty pose #
execute if entity @s[scores={zb.ase_opt_part=1}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
execute if entity @s[scores={zb.ase_opt_part=2}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.Body run data modify entity @s Pose.Body set value [0.001f,0.001f,0.001f]
execute if entity @s[scores={zb.ase_opt_part=3}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0f,0f,0f]
execute if entity @s[scores={zb.ase_opt_part=4}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.RightArm run data modify entity @s Pose.RightArm set value [0f,0f,0f]
execute if entity @s[scores={zb.ase_opt_part=5}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.LeftLeg run data modify entity @s Pose.LeftLeg set value [0f,0f,0f]
execute if entity @s[scores={zb.ase_opt_part=6}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s Pose.RightLeg run data modify entity @s Pose.RightLeg set value [0f,0f,0f]

# get pose #
execute if entity @s[scores={zb.ase_opt_part=1}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.Head[1]
execute if entity @s[scores={zb.ase_opt_part=2}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.Body[1]
execute if entity @s[scores={zb.ase_opt_part=3}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={zb.ase_opt_part=4}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={zb.ase_opt_part=5}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.LeftLeg[1]
execute if entity @s[scores={zb.ase_opt_part=6}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pose.RightLeg[1]

# operation #
scoreboard players operation @e[type=armor_stand,tag=zb.ase_edit] zb.ase_temp += @s zb.ase_const

# set pose #
execute if entity @s[scores={zb.ase_opt_part=1}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless score @s zb.ase_temp matches 0 unless score @s zb.ase_temp matches 360 unless score @s zb.ase_temp matches -360 store result entity @s Pose.Head[1] float 1 run scoreboard players get @s zb.ase_temp
execute if entity @s[scores={zb.ase_opt_part=2}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless score @s zb.ase_temp matches 0 unless score @s zb.ase_temp matches 360 unless score @s zb.ase_temp matches -360 store result entity @s Pose.Body[1] float 1 run scoreboard players get @s zb.ase_temp
execute if entity @s[scores={zb.ase_opt_part=3}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s zb.ase_temp
execute if entity @s[scores={zb.ase_opt_part=4}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s zb.ase_temp
execute if entity @s[scores={zb.ase_opt_part=5}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s zb.ase_temp
execute if entity @s[scores={zb.ase_opt_part=6}] as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s zb.ase_temp

# special cases #
execute if score @s zb.ase_opt_part matches 1 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches 0 run data modify entity @s Pose.Head[1] set value 0.001f
execute if score @s zb.ase_opt_part matches 2 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches 0 run data modify entity @s Pose.Body[1] set value 0.001f
execute if score @s zb.ase_opt_part matches 1 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches 360 run data modify entity @s Pose.Head[1] set value 0.001f
execute if score @s zb.ase_opt_part matches 2 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches 360 run data modify entity @s Pose.Body[1] set value 0.001f
execute if score @s zb.ase_opt_part matches 1 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches -360 run data modify entity @s Pose.Head[1] set value 0.001f
execute if score @s zb.ase_opt_part matches 2 as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if score @s zb.ase_temp matches -360 run data modify entity @s Pose.Body[1] set value 0.001f

# call menu #
execute if entity @s[tag=!zb.ase_opt_z] run function zb.ase:echo/edit_pose