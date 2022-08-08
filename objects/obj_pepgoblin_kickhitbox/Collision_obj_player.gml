with (other.id)
{
    if (instance_exists(other.baddieID) && ((state != 2) && ((state != 24) && (state != 18))))
    {
        state = 2
        xscale = other.baddieID.image_xscale
        movespeed = 14
        vsp = 0
        sprite_index = spr_tumble
    }
}

