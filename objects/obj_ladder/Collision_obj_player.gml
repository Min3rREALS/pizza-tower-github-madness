with (obj_player1)
{
    if (key_up && (place_meeting(x, y, other.id) && ((ladderbuffer == 0) && (((state == 0) || ((state == 70) || ((state == 91) || ((state == 69) || ((state == 30) || ((state == 58) || (state == 32))))))) && ((state != 73) && ((state != 71) && ((state != 74) && (state != 77))))))))
    {
        mach2 = 0
        state = 59
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
if instance_exists(obj_player2)
{
    with (obj_player2)
    {
        if (key_up && (place_meeting(x, y, other.id) && ((ladderbuffer == 0) && (((state == 0) || ((state == 70) || ((state == 91) || ((state == 69) || ((state == 30) || ((state == 58) || (state == 32))))))) && ((state != 73) && ((state != 71) && ((state != 74) && (state != 77))))))))
        {
            mach2 = 0
            state = 59
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}

