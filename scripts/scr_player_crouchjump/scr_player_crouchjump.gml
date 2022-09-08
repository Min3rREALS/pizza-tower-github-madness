function scr_player_crouchjump() {
	move = (key_left + key_right)
	fallinganimation++
	if ((fallinganimation >= 40) && (fallinganimation < 80))
	{
	    sprite_index = spr_facestomp
	    state = 58
	}
	mask_index = spr_crouchmask
	hsp = (move * movespeed)
	movespeed = 4
	if ((!key_jump2) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (scr_solid(x, (y - 1)) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp = grav
	    jumpstop = 1
	}
	if (grounded && key_down)
	{
	    state = 66
	    jumpAnim = 1
	    crouchAnim = 1
	    image_index = 0
	    jumpstop = 0
	    scr_soundeffect(sfx_step)
	}
	if (jumpAnim == 1)
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_crouchjump
	    else
	        sprite_index = spr_crouchjump
	    if (floor(image_index) == (image_number - 1))
	        jumpAnim = 0
	}
	if (jumpAnim == 0)
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_crouchfall
	    else
	        sprite_index = spr_crouchfall
	}
	if (grounded && ((!key_down) && (!scr_solid(x, (y - 16)))))
	{
	    movespeed = 0
	    state = 0
	    jumpAnim = 1
	    landAnim = 1
	    crouchAnim = 1
	    image_index = 0
	    jumpstop = 0
	    mask_index = spr_player_mask
	    scr_soundeffect(sfx_step)
	}
	if (move != 0)
	    xscale = move
	image_speed = 0.35



}
