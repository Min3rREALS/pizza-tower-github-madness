if ((hurted == 0) && ((cutscene == 0) && (((state != 27) && (sprite_index != spr_bombpep_end)) && ((state != 63) && (state != 65)))))
{
    if ((state == 24) || (state == 25))
    {
        scr_soundeffect(sfx_loseknight)
        with (instance_create(x, y, obj_knightdebris))
            image_index = 0
        with (instance_create(x, y, obj_knightdebris))
            image_index = 1
        with (instance_create(x, y, obj_knightdebris))
            image_index = 2
        with (instance_create(x, y, obj_knightdebris))
            image_index = 3
        with (instance_create(x, y, obj_knightdebris))
            image_index = 4
        with (instance_create(x, y, obj_knightdebris))
            image_index = 5
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
    }
    image_index = 0
    hurted = 1
    vsp = -4
    sprite_index = spr_bombpepend
    state = 27
    bombpeptimer = 0
}

