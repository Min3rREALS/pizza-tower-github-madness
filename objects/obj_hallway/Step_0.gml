if instance_exists(obj_noisesatellite)
    sprite_index = spr_doorblocked
if place_meeting(x, y, obj_doorA)
    targetDoor = "A"
if place_meeting(x, y, obj_doorB)
    targetDoor = "B"
if place_meeting(x, y, obj_doorC)
    targetDoor = "C"
if place_meeting(x, y, obj_doorD)
    targetDoor = "D"
if place_meeting(x, y, obj_doorE)
    targetDoor = "E"

if instance_exists(obj_spongeman)
{
	with instance_create(x,y,obj_solid)
	{
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale * 2
	}
	instance_destroy()
}