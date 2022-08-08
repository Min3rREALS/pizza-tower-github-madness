var _temp_local_var_7;
with (obj_player)
{
    if (grounded && (obj_hookshot.hooked == 0))
        hsp = 0
    if (obj_hookshot.hooked == 1)
    {
        xDist = (obj_player.x - obj_hookshot.x)
        yDist = (obj_player.y - obj_hookshot.y)
        if (sign(xDist) == -1)
            hsp++
        else if (sign(xDist) == 1)
            hsp--
        else
            hsp = 0
        vsp = 0
    }
}
if (scr_solid(x, y) && (hooked == 0))
{
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    with (instance_create(x, y, obj_slimedebris))
        sprite_index = spr_hookshot_drop
    hsp = 0
    vsp = 0
    hooked = 1
    obj_player.state = 9
}
if (((sprite_index == spr_hookshot_side) || (sprite_index == spr_hookshot_top)) && (image_number == -1))
    image_speed = 0
if (((hooked == 1) && (obj_player.state != 9)) || (obj_player.state != 9))
    instance_destroy()
var _temp_local_var_7 = abs(vsp)
if (abs(vsp) <= 0)
{
}
else
{
    while (true)
    {
        if (!place_meeting(x, (y + sign(vsp)), obj_null))
        {
            y += sign(vsp)
            _temp_local_var_7 = (abs(vsp) - 1)
            if (abs(vsp) - 1)
                continue
        }
        else
            vsp = 0
    }
}
_temp_local_var_7 = abs(hsp)
if (abs(hsp) <= 0)
{
}
else
{
    while (true)
    {
        if (place_meeting((x + sign(hsp)), y, obj_null) && (place_meeting((x + sign(hsp)), (y - 1), obj_null) && (!place_meeting((x + sign(hsp)), (y - 2), obj_null))))
            y -= 2
        else if (place_meeting((x + sign(hsp)), y, obj_null) && (!place_meeting((x + sign(hsp)), (y - 1), obj_null)))
            y--
        if ((!place_meeting((x + sign(hsp)), y, obj_null)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_null)) && ((!place_meeting((x + sign(hsp)), (y + 2), obj_null)) && place_meeting((x + sign(hsp)), (y + 3), obj_null))))
            y += 2
        else if ((!place_meeting((x + sign(hsp)), y, obj_null)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_null)) && place_meeting((x + sign(hsp)), (y + 2), obj_null)))
            y++
        if (!place_meeting((x + sign(hsp)), y, obj_null))
        {
            x += sign(hsp)
            _temp_local_var_7 = (abs(hsp) - 1)
            if (abs(hsp) - 1)
                continue
        }
        else
            hsp = 0
    }
}
if (vsp < 20)
    vsp += grav

