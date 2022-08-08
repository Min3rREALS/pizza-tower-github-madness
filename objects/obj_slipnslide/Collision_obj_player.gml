if (drop == 0)
{
    with (obj_player)
    {
        other.drop = 1
        other.vsp = -5
        state = 60
        if (movespeed < 12)
            movespeed = 12
    }
}

