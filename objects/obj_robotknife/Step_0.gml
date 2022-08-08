var _temp_local_var_1;
var _temp_local_var_1 = abs(vsp)
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
            _temp_local_var_1 = (abs(vsp) - 1)
            if (abs(vsp) - 1)
                continue
        }
        else
            vsp = 0
    }
}
_temp_local_var_1 = abs(hsp)
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
        if (!place_meeting((x + sign(hsp)), y, obj_null))
        {
            x += sign(hsp)
            _temp_local_var_1 = (abs(hsp) - 1)
            if (abs(hsp) - 1)
                continue
        }
        else
            hsp = 0
    }
}
if (vsp < 20)
    vsp += grav

