if ((invframes == 0) && (state == 106))
{
    scr_sound(sound_slaphit)
    instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
    state = 109
    obj_player.state = 46
    instance_destroy(other.id)
    obj_player.suplexhavetomash = 5
    obj_player.sprite_index = spr_player_grab
}

