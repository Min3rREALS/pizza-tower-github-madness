image_speed = 0.35
with (playerid)
{
    if (((!place_meeting(x, y, obj_snick)) && ((!place_meeting(x, y, obj_dresser)) && ((!place_meeting(x, y, obj_door)) && ((!place_meeting(x, y, obj_keydoor)) && (!place_meeting(x, y, obj_exitgate)))))) || ((!grounded) || (state != 0)))
        instance_destroy(other.id)
}
x = playerid.x
y = (playerid.y - 50)

