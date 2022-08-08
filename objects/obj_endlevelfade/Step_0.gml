with (obj_player1)
{
    if ((room == rank_room) && (global.coop == 0))
    {
        obj_player1.x = 480
        obj_player1.y = 270
    }
}
if (instance_exists(obj_player2) && (global.coop == 1))
{
    if (room == rank_room)
    {
        obj_player1.x = 380
        obj_player1.y = 270
        obj_player2.x = 580
        obj_player2.y = 270
    }
}
obj_camera.visible = false
if (fadealpha > 1)
{
    fadein = 1
    if (room != rank_room)
        room = rank_room
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1

