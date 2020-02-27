data modify entity @s Item.tag.EntityTag set from entity @e[type=armor_stand,tag=zb.ase_edit,limit=1]
data remove entity @s Item.tag.EntityTag.UUIDMost
data remove entity @s Item.tag.EntityTag.UUIDLeast
data remove entity @s Item.tag.EntityTag.Motion
data remove entity @s Item.tag.EntityTag.Pos
data modify entity @s Item.tag.display.Name set from entity @s Item.tag.EntityTag.CustomName
data modify entity @s Item.tag.EntityTag.Tags append value "zb.ase_no_edit"
data modify entity @s PickupDelay set value 0s