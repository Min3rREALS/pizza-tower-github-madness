if ((!audio_is_playing(mu_pizzatime)) && ((global.panic == 1) && ((obj_pause.pause == 0) && (obj_camera.ded == 0))))
{
    audio_stop_all()
    scr_sound(mu_pizzatime)
    pausedmusic = mu_pizzatime
}
if ((global.miniboss == 0) && audio_is_playing(mu_miniboss))
    audio_stop_sound(mu_miniboss)
if ((!audio_is_playing(mu_snickchallenge)) && ((global.snickchallenge == 1) && ((obj_pause.pause == 0) && ((global.minutes >= 2) && (obj_camera.ded == 0)))))
{
    audio_stop_all()
    scr_sound(mu_snickchallenge)
    pausedmusic = mu_snickchallenge
}
else if ((!audio_is_playing(mu_snickchallengeend)) && ((global.snickchallenge == 1) && ((obj_pause.pause == 0) && ((global.minutes < 2) && (obj_camera.ded == 0)))))
{
    audio_stop_all()
    scr_sound(mu_snickchallengeend)
    pausedmusic = mu_snickchallenge
}
if (room != hub_room1)
    fadeoff = audio_sound_get_track_position(global.music)
else
    fadeoff = 0
if ((room == strongcold_miniboss) && (global.miniboss == 1))
{
    if (!audio_is_playing(mu_miniboss))
    {
        audio_stop_all()
        scr_sound(mu_miniboss)
        scr_soundeffect(sfx_scream5)
        pausedmusic = mu_miniboss
    }
}
else if (room == strongcold_endscreen)
{
    if (!audio_is_playing(mu_entrance))
    {
        audio_stop_all()
        scr_sound(mu_entrance)
        pausedmusic = mu_entrance
    }
}

