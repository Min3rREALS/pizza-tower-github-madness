if (player == 1)
{
    if ((sprite_index == sprgot) && (obj_player1.state != 23))
        instance_destroy()
}
if (player == 2)
{
    if ((sprite_index == sprgot) && (obj_player2.state != 23))
        instance_destroy()
}
if (sprite_index != sprgot)
    sprite_index = spridle
if (place_meeting(x, y, obj_player1) && (player == 0))
{
    with (obj_player1)
    {
        treasure_x = x
        treasure_y = y
        treasure_room = room
        if grounded
        {
            ds_list_add(global.saveroom, other.id)
            global.treasure = 1
            hsp = 0
            vsp = 0
            if (other.sprite_index == other.spridle)
                other.alarm[0] = 150
            if (other.sprite_index == other.spridle)
            {
                state = 23
                scr_soundeffect(sfx_secretfound)
            }
            other.sprite_index = other.sprgot
            other.x = obj_player1.x
            other.y = (obj_player1.y - 35)
            obj_tv.showtext = 1
            obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!"
            obj_tv.alarm[0] = 200
            other.player = 1
            ini_close()
        }
    }
}
if (place_meeting(x, y, obj_player2) && (player == 0))
{
    with (obj_player2)
    {
        treasure_x = x
        treasure_y = y
        treasure_room = room
        if grounded
        {
            ds_list_add(global.saveroom, other.id)
            global.treasure = 1
            hsp = 0
            vsp = 0
            if (other.sprite_index == other.spridle)
                other.alarm[0] = 150
            if (other.sprite_index == other.spridle)
            {
                state = 23
                scr_soundeffect(sfx_secretfound)
            }
            other.sprite_index = other.sprgot
            other.x = obj_player2.x
            other.y = (obj_player2.y - 35)
            obj_tv.showtext = 1
            obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!"
            obj_tv.alarm[0] = 200
            other.player = 2
            ini_close()
        }
    }
}

