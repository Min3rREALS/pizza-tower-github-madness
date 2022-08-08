scr_getinput2()
switch state
{
    case 0:
        scr_player_normal()
        break
    case 109:
        scr_player_grabbed()
        break
    case 3:
        scr_player_finishingblow()
        break
    case 2:
        scr_player_tumble()
        break
    case 8:
        scr_player_titlescreen()
        break
    case 4:
        scr_player_ejected()
        break
    case 7:
        scr_player_firemouth()
        break
    case 6:
        scr_player_fireass()
        break
    case 5:
        scr_player_transitioncutscene()
        break
    case 9:
        scr_playerN_hookshot()
        break
    case 12:
        scr_player_slap()
        break
    case 10:
        scr_player_tacklecharge()
        break
    case 13:
        scr_player_cheesepep()
        break
    case 11:
        scr_player_cheeseball()
        break
    case 14:
        scr_player_cheesepepstick()
        break
    case 15:
        scr_player_boxxedpep()
        break
    case 16:
        scr_player_pistolaim()
        break
    case 17:
        scr_player_climbwall()
        break
    case 18:
        scr_player_knightpepslopes()
        break
    case 19:
        scr_player_portal()
        break
    case 20:
        scr_player_secondjump()
        break
    case 21:
        scr_player_chainsawbump()
        break
    case 22:
        scr_player_handstandjump()
        break
    case 23:
        scr_player_gottreasure()
        break
    case 24:
        scr_player_knightpep()
        break
    case 25:
        scr_player_knightpepattack()
        break
    case 26:
        scr_player_meteorpep()
        break
    case 27:
        scr_player_bombpep()
        break
    case 28:
        scr_player_grabbing()
        break
    case 29:
        scr_player_chainsawpogo()
        break
    case 30:
        scr_player_shotgunjump()
        break
    case 31:
        scr_player_stunned()
        break
    case 32:
        scr_player_highjump()
        break
    case 33:
        scr_player_chainsaw()
        break
    case 34:
        scr_player_facestomp()
        break
    case 36:
        scr_player_timesup()
        break
    case 37:
        scr_player_machroll()
        break
    case 39:
        scr_player_pistol()
        break
    case 38:
        scr_player_shotgun()
        break
    case 40:
        scr_player_machfreefall()
        break
    case 41:
        scr_player_throw()
        break
    case 43:
        scr_player_superslam()
        break
    case 42:
        scr_player_slam()
        break
    case 44:
        scr_player_skateboard()
        break
    case 45:
        scr_player_grind()
        break
    case 46:
        scr_player_grab()
        break
    case 47:
        scr_player_punch()
        break
    case 48:
        scr_player_backkick()
        break
    case 49:
        scr_player_uppunch()
        break
    case 50:
        scr_player_shoulder()
        break
    case 51:
        scr_player_backbreaker()
        break
    case 52:
        scr_player_bossdefeat()
        break
    case 54:
        scr_player_bossintro()
        break
    case 62:
        scr_player_smirk()
        break
    case 53:
        scr_player_pizzathrow()
        break
    case 55:
        scr_player_gameover()
        break
    case 93:
        scr_player_Sjumpland()
        break
    case 92:
        scr_player_freefallprep()
        break
    case 90:
        scr_player_runonball()
        break
    case 88:
        scr_player_boulder()
        break
    case 56:
        scr_player_keyget()
        break
    case 57:
        scr_player_tackle()
        break
    case 60:
        scr_player_slipnslide()
        break
    case 59:
        scr_player_ladder()
        break
    case 58:
        scr_player_jump()
        break
    case 64:
        scr_player_victory()
        break
    case 61:
        scr_player_comingoutdoor()
        break
    case 63:
        scr_player_Sjump()
        break
    case 65:
        scr_player_Sjumpprep()
        break
    case 66:
        scr_player_crouch()
        break
    case 67:
        scr_player_crouchjump()
        break
    case 68:
        scr_player_crouchslide()
        break
    case 69:
        scr_player_mach1()
        break
    case 70:
        scr_player_mach2()
        break
    case 91:
        scr_player_mach3()
        break
    case 71:
        scr_player_machslide()
        break
    case 72:
        scr_player_bump()
        break
    case 73:
        scr_player_hurt()
        break
    case 74:
        scr_player_freefall()
        break
    case 77:
        scr_player_freefallland()
        break
    case 75:
        scr_player_hang()
        break
    case 78:
        scr_player_door()
        break
    case 84:
        scr_player_barrelnormal()
        break
    case 83:
        scr_player_barrelfall()
        break
    case 82:
        scr_player_barrelmach1()
        break
    case 81:
        scr_player_barrelmach2()
        break
    case 80:
        scr_player_barrelfloat()
        break
    case 79:
        scr_player_barrelcrouch()
        break
    case 85:
        scr_player_barrelslipnslide()
        break
    case 86:
        scr_player_barrelroll()
        break
    case 87:
        scr_player_current()
        break
    case 89:
        scr_player_taxi()
        break
}

if (state != 109 && state != 73)
    thrown = 0
if (global.coop == 0)
    fightball = 0
if (state != 91 && state != 109)
    fightball = 0
if (key_start && global.coop == 1 && fightball == 0)
{
    with (instance_create(x, y, obj_dashcloud))
        sprite_index = spr_bombexplosion
    repeat (6)
        instance_create(x, y, obj_baddiegibs)
    global.coop = 0
    instance_destroy(obj_cooppointer)
    instance_destroy(obj_coopflag)
    obj_player1.spotlight = 1
    obj_player1.depth = -7
    scr_soundeffect(sfx_explosion)
}
if (global.coop == 0)
{
    obj_player1.spotlight = 1
    x = -1000
    y = 500
    state = 8
    if instance_exists(obj_coopflag)
        instance_destroy(obj_coopflag)
    if instance_exists(obj_cooppointer)
        instance_destroy(obj_cooppointer)
}
scr_playersounds()
if (grounded && state != 22)
    suplexmove = 0
if (state != 74)
    freefallsmash = 0
if (global.playerhealth <= 0 && state != 55)
{
    image_index = 0
    sprite_index = spr_deathstart
    state = 55
}
if (state == 55 && y > (room_height * 2))
{
    scr_playerreset()
    targetDoor = "none"
    room = hub_room1
}
if ((!instance_exists(baddiegrabbedID)) && (state == 46 || state == 43 || state == 10))
    state = 0
if (!(state == 46 || state == 43 || state == 70))
    baddiegrabbedID = 0
if grinding
    state = 45
if (anger == 0)
    angry = 0
if (anger > 0)
{
    angry = 1
    anger -= 1
}
if (sprite_index == spr_winding && state != 0)
    windingAnim = 0
if (state != 46)
    swingdingbuffer = 0
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == 0)
    instance_create(x, y, obj_sweat)
if (angry == 1 && (!instance_exists(angryeffectid)) && state == 0)
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index
        other.angryeffectid = id
    }
}
if (global.combotime == 0 && global.combo != 0)
    global.combo = 0
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == 70 || state == 10 || state == 44 || state == 24 || state == 15 || state == 13 || state == 18 || state == 25 || state == 27 || state == 34 || state == 40 || state == 34 || state == 37 || state == 91 || state == 74 || state == 63)
    attacking = 1
else
    attacking = 0
if (state == 41 || state == 47 || state == 48 || state == 50 || state == 49)
    grabbing = 1
else
    grabbing = 0
if (state == 91 || state == 60 || (state == 73 && thrown == 1) || state == 70 || state == 17 || state == 74 || state == 2 || state == 6 || state == 7 || state == 9 || state == 44 || state == 35 || state == 63 || state == 37 || state == 40 || state == 10 || (state == 43 && sprite_index == spr_piledriver) || state == 24 || state == 25 || state == 18 || state == 15 || state == 13 || state == 11)
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != 91 && state != 71)
    autodash = 0
if ((state != 58 && state != 67 && state != 12) || vsp < 0)
    fallinganimation = 0
if (state != 77 && state != 0 && state != 71)
    facehurt = 0
if (state != 0 && state != 71)
    machslideAnim = 0
if (state != 0)
{
    idle = 0
    dashdust = 0
}
if (state != 69 && state != 58 && state != 9 && state != 22 && state != 0 && state != 70 && state != 91 && state != 92 && state != 24 && state != 38 && state != 18)
    momemtum = 0
if (state != 63 && state != 65)
    a = 0
if (state != 34)
    facestompAnim = 0
if (state != 74 && state != 34 && state != 43 && state != 77)
    superslam = 0
if (state != 70)
    machpunchAnim = 0
if (state != 58)
    ladderbuffer = 0
if (state != 58)
    stompAnim = 0
if ((state == 91 || (state == 109 && instance_exists(obj_player1) && obj_player1.state == 91) || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71) && macheffect == 0)
{
    macheffect = 1
    toomuchalarm1 = 6
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index
        image_index = (other.image_index - 1)
        image_xscale = other.xscale
        sprite_index = other.sprite_index
    }
}
if (!(state == 91 || (state == 109 && instance_exists(obj_player1) && obj_player1.state == 91) || state == 70 || state == 17 || state == 9 || state == 37 || state == 10 || state == 22 || state == 71))
    macheffect = 0
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == 91 || (state == 109 && instance_exists(obj_player1) && obj_player1.state == 91) || state == 17 || state == 9 || state == 70 || state == 10 || state == 71 || state == 37 || state == 22 || (state == 33 && mach2 >= 100)))
    {
        with (instance_create(x, y, obj_mach3effect))
        {
            playerid = other.object_index
            image_index = (other.image_index - 1)
            image_xscale = other.xscale
            sprite_index = other.sprite_index
        }
        toomuchalarm1 = 6
    }
}
if (y < -800)
{
    x = roomstartx
    y = -500
    state = 74
    vsp = 10
}
if (character == "S")
{
    if (state == 67 || state == 66)
        state = 0
}
if (!place_meeting(x, y, obj_solid))
{
    if (state != 72 && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 2 && state != 6 && state != 66 && state != 15 && state != 39 && sprite_index != spr_player_crouchshoot && state != 65 && state != 33 && state != 37 && state != 73 && state != 68 && state != 67)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
}
else if place_meeting(x, y, obj_solid)
    mask_index = spr_crouchmask
if (character == "S" && state == 27)
    mask_index = spr_player_mask
else if (character == "S")
    mask_index = spr_crouchmask
if (state == 23 || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == 56 || state == 78 || state == 4 || state == 64 || state == 61 || state == 55)
    cutscene = 1
else
    cutscene = 0
if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == 0 && obj_player1.spotlight == 0)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index
}
if (state == 70 && (!instance_exists(speedlineseffectid)))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index
        other.speedlineseffectid = id
    }
}
scr_collide_destructibles()
if (state != 8 && state != 109 && state != 78 && state != 63 && state != 4 && state != 61 && state != 88 && state != 56 && state != 64 && state != 19 && state != 36 && state != 23 && state != 55)
    scr_collide_player()
if (state == 88)
    scr_collide_player()


