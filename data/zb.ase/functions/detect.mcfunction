# sight track #
execute as @a[nbt={SelectedItem:{tag:{zb.ase:true}}},scores={zb.ase_sneak=1..,zb.ase_cd=0}] if entity @e[tag=zb.ase,type=area_effect_cloud] at @s positioned ~ ~0.75 ~ run function zb.ase:selector/sight_track

# remove copy armorstand tag #
tag @e[tag=zb.ase_no_edit] remove zb.ase_edit
tag @e[tag=zb.ase_no_edit] remove zb.ase_no_edit

# armor stand place #
execute if entity @e[tag=zb.ase,type=area_effect_cloud] at @e[tag=zb.ase_place,type=armor_stand,limit=1] as @p[scores={zb.ase_place_as=1..}] run function zb.ase:echo/place_ask_edit

# reset sneak score #
scoreboard players set @a[scores={zb.ase_sneak=1..}] zb.ase_sneak 0

# nbt modify detect #
execute as @a[scores={zb.ase_pose_x=-180..179}] at @s run function zb.ase:pose/set_pose_x
execute as @a[scores={zb.ase_pose_y=-180..179}] at @s run function zb.ase:pose/set_pose_y
execute as @a[scores={zb.ase_pose_z=-180..179}] at @s run function zb.ase:pose/set_pose_z

execute as @a[scores={zb.ase_rot_x=-180..179}] at @s run function zb.ase:locate/set_rot_x
execute as @a[scores={zb.ase_rot_y=-180..179}] at @s run function zb.ase:locate/set_rot_y

execute if data storage zb:ase CustomName as @a[tag=zb.ase_edit_nbt] at @s run function zb.ase:nbt/custom_name
execute if data storage zb:ase CustomName run data remove storage zb:ase CustomName