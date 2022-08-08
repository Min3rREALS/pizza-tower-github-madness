if ((global.seconds == 0) && (global.minutes == 0))
    alarm[2] = 3
if (global.collect > 0)
{
    with (instance_create(obj_player1.x, obj_player1.y, obj_pizzaloss))
        sprite_index = choose(spr_xmastopping1, spr_xmastopping2, spr_xmastopping3, spr_xmastopping4, spr_xmastopping5)
}
if instance_exists(obj_player2)
{
    if (global.collectN > 0)
        instance_create(obj_player2.x, obj_player2.y, obj_pizzaloss)
}
if (global.collect > 0)
    global.collect -= 5
if ((global.snickchallenge == 1) && (global.collect == 0))
{
    with (obj_player)
    {
        state = 55
        sprite_index = spr_deathstart
        image_index = 0
        audio_stop_all()
        scr_soundeffect(mu_timesup)
    }
    alarm[2] = -1
}
if (global.miniboss == 1)
{
    with (obj_player)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = 4
        vsp = -10
        audio_stop_all()
        scr_soundeffect(mu_timesup)
    }
    alarm[2] = -1
    global.miniboss = 0
}

