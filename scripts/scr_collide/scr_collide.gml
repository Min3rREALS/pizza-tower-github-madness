function scr_collide() {
	// CODE CLEANED UP
	grounded = false;

	var vy = vsp;

	repeat abs(vy)
	{
	    if !scr_solid(x, y + sign(vsp))
	    {
	        y += sign(vsp);
	        vy -= 1;
		
	        if vy
	            continue;
	    }
	    else
		{
	        vsp = 0;
			break;
		}
	}

	var vx = abs(hsp);
	repeat abs(vx)
	{
	    if scr_solid(x + sign(hsp), y)
		&& !scr_solid(x + sign(hsp), y - 1)
			y--;
	
	    if !scr_solid((x + sign(hsp)), y)
		&& !scr_solid(x + sign(hsp), y + 1)
		&& scr_solid(x + sign(hsp), y + 2)
	        y++;
	
	    if !scr_solid(x + sign(hsp), y)
	    {
	        x += sign(hsp);
	        vx -= 1;
		
	        if vx
	            continue;
	    }
	    else
		{
	        hsp = 0;
			break;
		}
	}

	if vsp < 10 // gravity cap
	    vsp += grav;

	grounded |= scr_solid(x, y + 1);
	grounded |= !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform);



}
