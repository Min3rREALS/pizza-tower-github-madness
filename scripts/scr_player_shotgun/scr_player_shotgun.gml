function scr_player_shotgun() {
	dir = xscale
	if (character == "P")
	    movespeed = 0
	if (character == "N")
	{
	    move = (key_left + key_right)
	    hsp = (move * movespeed)
	    if (movespeed < 4)
	        movespeed += 0.25
	    if (movespeed > 4)
	        movespeed -= 0.25
	    if (move == 0)
	        movespeed = 0
	    if (sprite_index == spr_shotgunpullout)
	        movespeed = 0
	    if (scr_solid((x + sign(hsp)), y) && ((xscale == 1) && ((move == 1) && (!place_meeting((x + 1), y, obj_slope)))))
	        movespeed = 0
	    if (scr_solid((x + sign(hsp)), y) && ((xscale == -1) && ((move == -1) && (!place_meeting((x - 1), y, obj_slope)))))
	        movespeed = 0
	}
	landAnim = 0
	momemtum = 1
	if (character == "N")
	{
	    var shooting = 0
	    if ((image_index + image_speed) >= image_number)
	        shooting = 1
	    if (shooting == 1)
	    {
	        with (instance_create((x + (xscale * 60)), (y + 30), obj_shotgunbullet))
	            spdh = random_range(4, -1)
	    }
	}
	if ((floor(image_index) == (image_number - 1)) && (character == "P"))
	{
	    if grounded
	    {
	        sprite_index = spr_shotgunidle
	        state = 0
	    }
	    else
	    {
	        sprite_index = spr_shotgunfall
	        state = 58
	    }
	}
	if (((!key_slap) && ((character == "N") && (sprite_index != spr_shotgunpullout))) || ((sprite_index == spr_shotgunpullout) && (floor(image_index) == (image_number - 1))))
	{
	    if grounded
	    {
	        sprite_index = spr_shotgunidle
	        state = 0
	    }
	    else
	    {
	        sprite_index = spr_shotgunfall
	        state = 58
	    }
	}
	image_speed = 0.4
	if ((!instance_exists(obj_slidecloud)) && (grounded && (movespeed > 4)))
	    instance_create(x, y, obj_slidecloud)



}
