if (((distance_to_object(obj_player2) > 1000) || key_taunt2) && (obj_player1.spotlight == 0))
{
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    x = obj_player2.x
    y = obj_player2.y
    state = 0
}

