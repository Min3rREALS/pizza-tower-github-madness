with (obj_peasanto)
{
    if (place_meeting((x + hsp), y, other.id) && ((state == 96) && ((other.sprite_index != spr_haystackburning) && (other.sprite_index != spr_haystackburningup))))
        other.sprite_index = spr_haystackburningup
}
if (place_meeting((x + 1), y, obj_haystack) && (sprite_index == spr_haystackburning))
{
    with (instance_place((x + 1), y, obj_haystack))
    {
        if ((sprite_index != spr_haystackburningup) && (sprite_index != spr_haystackburning))
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting((x - 1), y, obj_haystack) && (sprite_index == spr_haystackburning))
{
    with (instance_place((x - 1), y, obj_haystack))
    {
        if ((sprite_index != spr_haystackburningup) && (sprite_index != spr_haystackburning))
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting(x, (y + 1), obj_haystack) && (sprite_index == spr_haystackburning))
{
    with (instance_place(x, (y + 1), obj_haystack))
    {
        if ((sprite_index != spr_haystackburningup) && (sprite_index != spr_haystackburning))
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting(x, (y - 1), obj_haystack) && (sprite_index == spr_haystackburning))
{
    with (instance_place(x, (y - 1), obj_haystack))
    {
        if ((sprite_index != spr_haystackburningup) && (sprite_index != spr_haystackburning))
            sprite_index = spr_haystackburningup
    }
}
if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_haystackburningup))
    sprite_index = spr_haystackburning
if ((sprite_index == spr_haystackburning) && ((obj_player.state != 6) && ((obj_player.state != 24) && place_meeting(x, (y - 1), obj_player))))
{
    obj_player.state = 6
    obj_player.image_index = 0
    obj_player.vsp = -5
    obj_player.sprite_index = spr_player_fireass
}

