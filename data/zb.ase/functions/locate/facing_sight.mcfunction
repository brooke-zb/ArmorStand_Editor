# play click sound #
function zb.ase:echo/click_sound

# tp #
data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Rotation set from entity @s Rotation

# hightlight ray #
execute if entity @s[tag=zb.ase_ray_eyes] as @e[type=armor_stand,tag=zb.ase_edit] at @s anchored eyes run function zb.ase:locate/rot_highlight_ray
execute if entity @s[tag=zb.ase_ray_feet] as @e[type=armor_stand,tag=zb.ase_edit] at @s run function zb.ase:locate/rot_highlight_ray

# call menu #
function zb.ase:echo/edit_locate