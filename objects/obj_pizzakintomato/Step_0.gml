if ((room == rank_room) || (room == timesuproom))
    visible = false
else
    visible = playerid.visible
if (obj_player.state == 53)
    visible = false
if ((sprite_index == spr_xmastomatotoppin_intro) && (floor(image_index) == (image_number - 1)))
    sprite_index = spr_xmastomatotoppin_idle
if (obj_player1.spotlight == 1)
    playerid = obj_player1
else
    playerid = obj_player2
if ((global.tomatofollow == 1) && (sprite_index != spr_xmastomatotoppin_intro))
{
    image_alpha = playerid.image_alpha
    if (playerid.hsp != 0)
        sprite_index = spr_xmastomatotoppin_walk
    else
        sprite_index = spr_xmastomatotoppin_idle
    depth = -6
    if (global.cheesefollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_pizzakincheese.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_pizzakincheese.y - 2))
    }
    else if (global.shroomfollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_pizzakinshroom.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_pizzakinshroom.y - 2))
    }
    else
    {
        ds_queue_enqueue(followQueue, playerid.x)
        ds_queue_enqueue(followQueue, playerid.y)
    }
    LAG_STEPS = 10
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
        y = (ds_queue_dequeue(followQueue) + 2)
    }
    image_xscale = playerid.xscale
}
if ((global.playerhealth == 1) && (global.tomatofollow == 1))
    sprite_index = spr_pizzakintomato_panic

