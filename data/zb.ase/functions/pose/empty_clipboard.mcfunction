# play click sound #
function zb.ase:echo/click_sound

# copy to clipboard #
data modify storage zb:ase PoseClipBoard set value ["null","null","null"]

# title #
title @s title {"text":""}
title @s subtitle [{"text":"[剪贴板] ","color":"dark_green","bold":true},{"text":"已清空剪贴板","color":"green"}]