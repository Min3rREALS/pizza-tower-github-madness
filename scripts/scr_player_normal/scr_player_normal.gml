function scr_player_normal() {
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	mach2 = 0
	move = (key_left + key_right)
	if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
	    hsp = (move * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((move * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((move * movespeed) + 5)
	if ((character == "P") || (character == "N"))
	{
	    if ((machslideAnim == 0) && ((landAnim == 0) && (shotgunAnim == 0)))
	    {
	        if (move == 0)
	        {
	            if (idle < 400)
	                idle++
	            if ((idle >= 150) && (floor(image_index) == (image_number - 1)))
	            {
	                facehurt = 0
	                idle = 0
	                image_index = 0
	            }
	            if ((idle >= 150) && ((sprite_index != spr_idle1) && ((sprite_index != spr_idle2) && ((sprite_index != spr_idle3) && ((sprite_index != spr_idle4) && ((sprite_index != spr_idle5) && (sprite_index != spr_idle6)))))))
	            {
	                randomise()
	                idleanim = random_range(0, 100)
	                if (idleanim <= 16)
	                    sprite_index = spr_idle1
	                if ((idleanim > 16) && (idleanim < 32))
	                    sprite_index = spr_idle2
	                if ((idleanim > 32) && (idleanim < 48))
	                    sprite_index = spr_idle3
	                if ((idleanim > 48) && (idleanim < 64))
	                    sprite_index = spr_idle4
	                if ((idleanim > 64) && (idleanim < 80))
	                    sprite_index = spr_idle5
	                if (idleanim > 80)
	                    sprite_index = spr_idle6
	                image_index = 0
	            }
	            if (idle < 150)
	            {
	                if (facehurt == 0)
	                {
	                    if ((windingAnim < 1800) || ((angry == 1) || (global.playerhealth == 1)))
	                    {
	                        start_running = 1
	                        movespeed = 0
	                        if ((global.minutes == 0) && (global.seconds == 0))
	                            sprite_index = spr_hurtidle
	                        else if ((global.panic == 1) || (global.snickchallenge == 1))
	                            sprite_index = spr_panic
	                        else if (angry == 1)
	                            sprite_index = spr_3hpidle
	                        else
	                            sprite_index = spr_idle
	                    }
	                    else if ((character == "P") || (character == "N"))
	                    {
	                        idle = 0
	                        windingAnim--
	                        sprite_index = spr_winding
	                    }
	                }
	                else if ((facehurt == 1) && ((character == "P") || (character == "N")))
	                {
	                    windingAnim = 0
	                    if ((sprite_index != spr_facehurtup) && (sprite_index != spr_facehurt))
	                        sprite_index = spr_facehurtup
	                    if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_facehurtup))
	                        sprite_index = spr_facehurt
	                }
	            }
	        }
	        if (move != 0)
	        {
	            machslideAnim = 0
	            idle = 0
	            facehurt = 0
	            if ((global.minutes == 0) && (global.seconds == 0))
	                sprite_index = spr_hurtwalk
	            else if (angry == 1)
	                sprite_index = spr_3hpwalk
	            else
	                sprite_index = spr_move
	        }
	        if (move != 0)
	            xscale = move
	    }
	}
	if (character == "S")
	{
	    if (machslideAnim == 0)
	    {
	        if (move == 0)
	        {
	            if (idle < 400)
	                idle++
	            if ((idle >= 100) && (floor(image_index) == (image_number - 1)))
	            {
	                idle = 0
	                image_index = 0
	            }
	            if ((idle >= 100) && (sprite_index != spr_idle1))
	                sprite_index = spr_idle1
	            if (idle < 100)
	                sprite_index = spr_idle
	        }
	        if (move != 0)
	        {
	            machslideAnim = 0
	            sprite_index = spr_move
	            xscale = move
	        }
	    }
	}
	if (landAnim == 1)
	{
	    if (shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            movespeed = 0
	            sprite_index = spr_land
	            if (floor(image_index) == (image_number - 1))
	                landAnim = 0
	        }
	        if (move != 0)
	        {
	            sprite_index = spr_land2
	            if (floor(image_index) == (image_number - 1))
	            {
	                landAnim = 0
	                sprite_index = spr_move
	                image_index = 0
	            }
	        }
	    }
	    if (shotgunAnim == 1)
	    {
	        sprite_index = spr_shotgunland
	        if (floor(image_index) == (image_number - 1))
	        {
	            landAnim = 0
	            sprite_index = spr_move
	            image_index = 0
	        }
	    }
	}
	if (machslideAnim == 1)
	{
	    sprite_index = spr_machslideend
	    if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_machslideend))
	        machslideAnim = 0
	}
	if ((sprite_index == spr_shotgunshoot) && (floor(image_index) == (image_number - 1)))
	    sprite_index = spr_shotgunidle
	if (landAnim == 0)
	{
	    if ((shotgunAnim == 1) && ((move == 0) && (sprite_index != spr_shotgunshoot)))
	        sprite_index = spr_shotgunidle
	    else if ((shotgunAnim == 1) && (sprite_index != spr_shotgunshoot))
	        sprite_index = spr_shotgunwalk
	}
	if (scr_solid((x + sign(hsp)), y) && ((xscale == 1) && ((move == 1) && (!place_meeting((x + 1), y, obj_slope)))))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && ((xscale == -1) && ((move == -1) && (!place_meeting((x - 1), y, obj_slope)))))
	    movespeed = 0
	jumpstop = 0
	if ((!grounded) && (!key_jump))
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_fall
	    else
	        sprite_index = spr_shotgunfall
	    jumpAnim = 0
	    state = 58
	    image_index = 0
	}
	if (key_jump && (grounded && (!key_down)))
	{
	    scr_soundeffect(sfx_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgunjump
	    with (instance_create(x, y, obj_highjumpcloud2))
	        image_xscale = other.xscale
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	    state = 58
	    image_index = 0
	    jumpAnim = 1
	}
	if (grounded && ((input_buffer_jump < 8) && ((!key_down) && ((!key_attack) && (vsp > 0)))))
	{
	    scr_soundeffect(sfx_jump)
	    sprite_index = spr_jump
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgunjump
	    with (instance_create(x, y, obj_highjumpcloud2))
	        image_xscale = other.xscale
	    stompAnim = 0
	    if (character == "P")
	        vsp = -11
	    else
	        vsp = -13
	    state = 58
	    jumpAnim = 1
	    jumpstop = 0
	    image_index = 0
	    freefallstart = 0
	}
	if (((key_down && grounded) || (scr_solid(x, (y - 3)) && grounded)) && ((character == "P") || (character == "N")))
	{
	    state = 66
	    landAnim = 0
	    crouchAnim = 1
	    image_index = 0
	    idle = 0
	}
	if (move != 0)
	{
	    if (movespeed < 6)
	        movespeed += 0.5
	    else if (floor(movespeed) == 6)
	        movespeed = 6
	}
	else
	    movespeed = 0
	if (movespeed > 6)
	    movespeed -= 0.1
	momemtum = 0
	if (move != 0)
	{
	    xscale = move
	    if ((movespeed < 3) && (move != 0))
	        image_speed = 0.35
	    else if ((movespeed > 3) && (movespeed < 6))
	        image_speed = 0.45
	    else
	        image_speed = 0.6
	}
	else
	    image_speed = 0.35
	if (key_slap2 && (!((shotgunAnim == 1) && key_up)))
	{
	    suplexmove = 1
	    suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
	    state = 22
	    image_index = 0
	    if (shotgunAnim == 0)
	        sprite_index = spr_suplexdash
	    else
	        sprite_index = spr_shotgunsuplexdash
	    if (character == "P")
	        movespeed = 6
	    else
	        movespeed = 4
	}
	if (key_slap2 && ((shotgunAnim == 1) && key_up))
	{
	    scr_soundeffect(sfx_killingblow)
	    state = 38
	    with (instance_create(x, y, obj_pistoleffect))
	        image_xscale = other.image_xscale
	    image_index = 0
	    sprite_index = spr_shotgunshoot
	    if (character == "P")
	    {
	        instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	            spdh = 4
	        with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	            spdh = -4
	    }
	}
	if (key_attack && (!place_meeting((x + xscale), y, obj_solid)))
	{
	    movespeed = 6
	    sprite_index = spr_mach1
	    jumpAnim = 1
	    state = 69
	    image_index = 0
	}
	if ((character == "S") && ((move != 0) && (!place_meeting((x + xscale), y, obj_solid))))
	{
	    movespeed = 6
	    sprite_index = spr_mach1
	    jumpAnim = 1
	    state = 69
	    image_index = 0
	}
	if (key_attack && ((!place_meeting((x + xscale), y, obj_solid)) && ((character == "S") && grounded)))
	{
	    state = 22
	    movespeed = 0
	}
	if ((move != 0) && (((floor(image_index) == 3) || (floor(image_index) == 8)) && (steppy == 0)))
	{
	    instance_create(x, (y + 43), obj_cloudeffect)
	    steppy = 1
	}
	if ((move != 0) && ((floor(image_index) != 3) && (floor(image_index) != 8)))
	    steppy = 0
	if key_taunt2
	{
	    scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = 51
	    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
	    sprite_index = spr_taunt
	    instance_create(x, y, obj_taunteffect)
	}



}
