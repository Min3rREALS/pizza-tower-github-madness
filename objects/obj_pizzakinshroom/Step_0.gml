if ((room == rank_room) || (room == timesuproom))
    visible = false
else
    visible = playerid.visible
if (obj_player.state == 53)
    visible = false
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2
if ((sprite_index == spr_xmasshroomtoppin_intro) && (floor(image_index) == (image_number - 1)))
    sprite_index = spr_xmasshroomtoppin_idle
if ((global.shroomfollow == 1) && (sprite_index != spr_xmasshroomtoppin_intro))
{
    image_alpha = playerid.image_alpha
    if (playerid.hsp != 0)
        sprite_index = spr_xmasshroomtoppin_walk
    else
        sprite_index = spr_xmasshroomtoppin_idle
    depth = -6
    ds_queue_enqueue(followQueue, playerid.x)
    ds_queue_enqueue(followQueue, playerid.y)
    LAG_STEPS = 10
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
        y = (ds_queue_dequeue(followQueue) + 2)
    }
    image_xscale = playerid.xscale
}
if ((global.playerhealth == 1) && (global.shroomfollow == 1))
    sprite_index = spr_pizzakinshroom_panic

