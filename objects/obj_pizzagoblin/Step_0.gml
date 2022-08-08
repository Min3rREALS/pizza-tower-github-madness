switch state
{
    case 94:
        scr_enemy_idle()
        break
    case 96:
        scr_enemy_charge()
        break
    case 98:
        scr_enemy_turn()
        break
    case 102:
        scr_enemy_walk()
        break
    case 104:
        scr_enemy_land()
        break
    case 105:
        scr_enemy_hit()
        break
    case 106:
        scr_enemy_stun()
        break
    case 97:
        scr_pizzagoblin_throw()
        break
    case 109:
        scr_enemy_grabbed()
        break
}


if ((state == 106) && ((stunned > 100) && (birdcreated == 0)))
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
idlespr = spr_pizzagoblin_idle
stunfallspr = spr_pizzagoblin_stun
walkspr = spr_pizzagoblin_walk
stunspr = spr_pizzagoblin_stun
grabbedspr =  spr_pizzagoblin_stun
if (((obj_player1.x > (x - 400)) && (obj_player1.x < (x + 400))) && ((y <= (obj_player1.y + 60)) && (y >= (obj_player1.y - 60))))
{
    if ((state != 94) && (obj_player1.state == 91))
    {
        state = 94
        sprite_index = scaredspr
        if (x != obj_player1.x)
            image_xscale = (-sign((x - obj_player1.x)))
    }
}
if instance_exists(obj_player2)
{
    if (((obj_player2.x > (x - 400)) && (obj_player2.x < (x + 400))) && ((y <= (obj_player2.y + 60)) && (y >= (obj_player2.y - 60))))
    {
        if ((state != 94) && (obj_player2.state == 91))
        {
            state = 94
            sprite_index = scaredspr
            if (x != obj_player2.x)
                image_xscale = (-sign((x - obj_player2.x)))
        }
    }
}
if ((flash == 1) && (alarm[2] <= 0))
    alarm[2] = (0.15 * room_speed)
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (bombreset > 0)
    bombreset--
if ((x != obj_player1.x) && ((obj_player1.state != 27) && ((state != 97) && ((bombreset == 0) && grounded))))
{
    if (((obj_player1.x > (x - 400)) && (obj_player1.x < (x + 400))) && ((y <= (obj_player1.y + 20)) && (y >= (obj_player1.y - 20))))
    {
        if ((state == 102) || (state == 94))
        {
            image_index = 0
            image_xscale = (-sign((x - obj_player1.x)))
            state = 97
        }
    }
}
if instance_exists(obj_player2)
{
    if ((x != obj_player2.x) && ((obj_player2.state != 27) && ((state != 97) && ((bombreset == 0) && grounded))))
    {
        if (((obj_player2.x > (x - 400)) && (obj_player2.x < (x + 400))) && ((y <= (obj_player2.y + 20)) && (y >= (obj_player2.y - 20))))
        {
            if ((state == 102) || (state == 94))
            {
                image_index = 0
                image_xscale = (-sign((x - obj_player2.x)))
                state = 97
            }
        }
    }
}
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}

