with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_tomatoblock) && (state != 55))
    {
        if key_jump2
            obj_player.vsp = -20
        else
            vsp = -11
        if (state == 58)
            sprite_index = spr_player_Sjump
        with (instance_place(x, (y + 1), obj_tomatoblock))
        {
            image_index = 0
            image_speed = 0.35
        }
    }
}

