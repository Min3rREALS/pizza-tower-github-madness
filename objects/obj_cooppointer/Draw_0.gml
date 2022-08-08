while (!ds_queue_empty(edge_indicator))
{
    var _x = ds_queue_dequeue(edge_indicator)
    var _y = ds_queue_dequeue(edge_indicator)
    var _an = ds_queue_dequeue(edge_indicator)
    if ((room != characterselect) && (room != Scootertransition))
        draw_sprite_ext(spr_arrow, 0, _x, _y, 1, 1, 1, c_white, 1)
}

