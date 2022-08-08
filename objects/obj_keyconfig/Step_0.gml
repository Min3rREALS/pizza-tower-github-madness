if (selecting == -1)
{
    if (((obj_player1.key_up2 && (obj_player1.key_down2 != obj_player1.key_up2)) || keyboard_check_pressed(vk_up)) && (key_select > -1))
    {
        key_select -= 1
        scr_soundeffect(sfx_step)
    }
    if (((obj_player1.key_down2 && (obj_player1.key_up2 != obj_player1.key_down2)) || keyboard_check_pressed(vk_down)) && (key_select < 8))
    {
        key_select += 1
        scr_soundeffect(sfx_step)
    }
}
if ((obj_player.key_jump2 || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (key_select == -1)))
{
    scr_soundeffect(sfx_enemyprojectile)
    ini_open("saveData.ini")
    ini_write_string("ControlsKeys", "up", global.key_up)
    ini_write_string("ControlsKeys", "right", global.key_right)
    ini_write_string("ControlsKeys", "left", global.key_left)
    ini_write_string("ControlsKeys", "down", global.key_down)
    ini_write_string("ControlsKeys", "jump", global.key_jump)
    ini_write_string("ControlsKeys", "slap", global.key_slap)
    ini_write_string("ControlsKeys", "attack", global.key_attack)
    ini_write_string("ControlsKeys", "taunt", global.key_taunt)
    ini_write_string("ControlsKeys", "start", global.key_start)
    ini_write_string("ControlsKeys2", "up", global.key_upN)
    ini_write_string("ControlsKeys2", "right", global.key_rightN)
    ini_write_string("ControlsKeys2", "left", global.key_leftN)
    ini_write_string("ControlsKeys2", "down", global.key_downN)
    ini_write_string("ControlsKeys2", "jump", global.key_jumpN)
    ini_write_string("ControlsKeys2", "slap", global.key_slapN)
    ini_write_string("ControlsKeys2", "attack", global.key_attackN)
    ini_write_string("ControlsKeys2", "taunt", global.key_tauntN)
    ini_write_string("ControlsKeys2", "start", global.key_startN)
    ini_close()
    if instance_exists(obj_option)
        obj_option.visible = true
    instance_destroy()
}
if ((selecting == 0) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_up = keyboard_key
        selecting = -1
    }
}
if ((key_select == 0) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_up = -1
}
if ((selecting == 1) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_down = keyboard_key
        selecting = -1
    }
}
if ((key_select == 1) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_down = -1
}
if ((selecting == 2) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_right = keyboard_key
        selecting = -1
    }
}
if ((key_select == 2) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_right = -1
}
if ((selecting == 3) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_left = keyboard_key
        selecting = -1
    }
}
if ((key_select == 3) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_left = -1
}
if ((selecting == 4) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_jump = keyboard_key
        selecting = -1
    }
}
if ((key_select == 4) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_jump = -1
}
if ((selecting == 5) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_slap = keyboard_key
        selecting = -1
    }
}
if ((key_select == 5) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_slap = -1
}
if ((selecting == 6) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_attack = keyboard_key
        selecting = -1
    }
}
if ((key_select == 6) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_attack = -1
}
if ((selecting == 7) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_taunt = keyboard_key
        selecting = -1
    }
}
if ((key_select == 7) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_taunt = -1
}
if ((selecting == 8) && (player == 0))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_start = keyboard_key
        selecting = -1
    }
}
if ((key_select == 8) && ((obj_player1.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 0))))
{
    selecting = key_select
    global.key_start = -1
}
if ((selecting == 0) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_upN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 0) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_upN = -1
}
if ((selecting == 1) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_downN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 1) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_downN = -1
}
if ((selecting == 2) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_rightN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 2) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_rightN = -1
}
if ((selecting == 3) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_leftN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 3) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_leftN = -1
}
if ((selecting == 4) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_jumpN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 4) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_jumpN = -1
}
if ((selecting == 5) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_slapN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 5) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_slapN = -1
}
if ((selecting == 6) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_attackN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 6) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_attackN = -1
}
if ((selecting == 7) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_tauntN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 7) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_tauntN = -1
}
if ((selecting == 8) && (player == 1))
{
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_startN = keyboard_key
        selecting = -1
    }
}
if ((key_select == 8) && ((obj_player2.key_jump || keyboard_check_pressed(vk_return)) && ((selecting == -1) && (player == 1))))
{
    selecting = key_select
    global.key_startN = -1
}

