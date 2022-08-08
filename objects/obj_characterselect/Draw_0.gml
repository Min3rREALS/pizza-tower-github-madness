if (ready == 0)
{
    if (selected == 0)
    {
        draw_sprite(spr_player1cursor, -1, 344, 94)
        if (global.coop == 1)
            draw_sprite(spr_player2cursor, -1, 528, 94)
    }
    if (selected == 1)
    {
        draw_sprite(spr_player1cursor, -1, 528, 94)
        if (global.coop == 1)
            draw_sprite(spr_player2cursor, -1, 344, 94)
    }
}
else
{
    if (selected == 0)
    {
        draw_sprite(spr_player1cursorselected, -1, 344, 94)
        if (global.coop == 1)
            draw_sprite(spr_player2cursorselected, -1, 528, 94)
    }
    if (selected == 1)
    {
        draw_sprite(spr_player1cursorselected, -1, 528, 94)
        if (global.coop == 1)
            draw_sprite(spr_player2cursorselected, -1, 344, 94)
    }
}

