if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && (key_down && (((state == 66) || ((character == "S") && ((state == 0) || (state == 69)))) && place_meeting(x, (y + 1), obj_platform))))
        {
            y += 5
            state = 59
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}
if instance_exists(obj_player2)
{
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
            if (place_meeting(x, (y + 1), obj_ladder) && (key_down && (((state == 66) || ((character == "S") && ((state == 0) || (state == 69)))) && place_meeting(x, (y + 1), obj_platform))))
            {
                y += 5
                state = 59
                x = (other.x + 16)
                y = floor(y)
                if ((y % 2) == 1)
                    y -= 1
            }
        }
    }
}

