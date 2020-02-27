# send menu #
function zb.ase:echo/hello_world
execute unless entity @e[tag=zb.ase,type=area_effect_cloud] run function zb.ase:echo/install
execute if entity @e[tag=zb.ase,type=area_effect_cloud] run function zb.ase:echo/uninstall
function zb.ase:echo/show_help_button