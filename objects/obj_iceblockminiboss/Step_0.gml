if ((visible == true) && (obj_player.state != 4))
{
    if place_meeting(x, (y - 1), obj_player1)
    {
        with (obj_player1)
        {
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
            if (state == 24)
                state = 18
            else if (state != 18)
                state = 60
            if (movespeed < 12)
                movespeed = 12
        }
    }
}
if ((visible == false) && (global.boxhp <= 5))
{
    visible = true
    repeat (4)
        instance_create(x, y, obj_debris)
    if (!audio_is_playing(sfx_breakblock1))
        scr_soundeffect(sfx_breakblock1)
    mask_index = sprite_index
}

