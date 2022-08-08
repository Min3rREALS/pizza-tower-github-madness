if (obj_player1.spotlight == 1)
    player = obj_player1
else
    player = obj_player2
if (global.coop == 1)
{
    p2pdistance = point_distance(obj_player1.x, obj_player1.y, obj_player2.x, obj_player2.y)
    if (obj_player1.x >= obj_player2.x)
        p2pdistancex = ((-p2pdistance) / 2)
    else
        p2pdistancex = (p2pdistance / 2)
}
if (floor(image_index) == 10)
    shoving = 0
if ((room == strongcold_endscreen) || ((room == rank_room) || ((room == timesuproom) || ((room == Realtitlescreen) || (room == characterselect)))))
    visible = false
else
    visible = true
if (global.combo >= 10)
{
    global.SAGEcombo10 = 1
    ini_open("saveData.ini")
    ini_write_string("SAGE2019", "combo10", 1)
    ini_close()
}
if ((shoving == 1) && ((image_index >= 3) && (bang == 0)))
{
    with (instance_create(x, y, obj_fallingHUDface))
    {
        if ((obj_player1.spotlight == 0) && (obj_player1.character == "P"))
        {
            sprite = 960
            hsp = random_range(-1, -5)
        }
        else
        {
            sprite = 888
            hsp = random_range(1, 5)
        }
    }
    bang = 1
}
if (shoving == 0)
    bang = 0
if (room == timesuproom)
    timestop = 1
if ((global.seconds <= 0) && ((global.minutes <= 0) && (ded == 0)))
{
    alarm[1] = -1
    alarm[2] = 3
    ded = 1
}
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes -= 1
}
if (global.seconds > 59)
{
    global.minutes += 1
    global.seconds -= 59
}
if (((global.panic == 1) && (global.minutes < 1)) || (player.sprite_index == spr_player_timesup))
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
else if ((global.panic == 1) && (basement == 0))
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(player) && ((player.state != 36) && (player.state != 55)))
{
    var target = player
    var coopdistance = (distance_to_object(obj_player2) / 2)
    if ((player.state == 91) || (player.state == 37))
    {
        if (chargecamera > (player.xscale * 100))
            chargecamera -= 2
        if (chargecamera < (player.xscale * 100))
            chargecamera += 2
        __view_set(0, 0, (((target.x - (__view_get(2, 0) / 2)) + chargecamera) + p2pdistancex))
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2
        if (chargecamera < 0)
            chargecamera += 2
        __view_set(0, 0, (((target.x - (__view_get(2, 0) / 2)) + chargecamera) + p2pdistancex))
    }
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
    __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)))
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - __view_get(3, 0))))
    if (shake_mag != 0)
    {
        __view_set(0, 0, (((target.x - (__view_get(2, 0) / 2)) + chargecamera) + p2pdistancex))
        __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
        __view_set(1, 0, ((target.y - (__view_get(3, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - __view_get(3, 0)) + irandom_range((-shake_mag), shake_mag))))
    }
}

