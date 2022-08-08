with (instance_create(x, y, obj_fadeout))
{
    obj_player1.targetRoom = 6
    obj_player1.state = 0
    if (global.coop == 1)
        obj_player2.state = 0
}

