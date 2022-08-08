if (((distance_to_object(obj_player1) > 1000) || key_taunt2) && ((obj_player1.spotlight == 1) && (global.coop == 1)))
{
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    x = obj_player1.x
    y = obj_player1.y
    state = 0
}

