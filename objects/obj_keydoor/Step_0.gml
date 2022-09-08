if (((obj_player1.state == 0) || ((obj_player1.state == 69) || ((obj_player1.state == 70) || ((obj_player1.state == 91) || (obj_player1.state == 65))))) && ((sprite_index == spr_doorkey) && (obj_player1.key_up && ((global.key_inv == 1) && place_meeting(x, y, obj_player1)))))
{
    ds_list_add(global.saveroom, id)
    obj_player1.state = 64
    obj_player1.image_index = 0
    if (instance_exists(obj_player2) && (global.coop == 1))
    {
        obj_player2.x = obj_player1.x
        obj_player2.y = obj_player1.y
        obj_player2.state = 64
        obj_player2.image_index = 0
    }
    image_index = 0
    sprite_index = spr_doorkeyopen
    image_speed = 0.35
    instance_create((x + 50), (y + 50), obj_lock)
    global.key_inv = 0
}
if instance_exists(obj_player2)
{
    if ((obj_player2.state == 0) && (obj_player2.key_up && ((global.key_inv == 1) && place_meeting(x, y, obj_player2))))
    {
        ds_list_add(global.saveroom, id)
        obj_player2.state = 64
        obj_player2.image_index = 0
        obj_player1.x = obj_player2.x
        obj_player1.y = obj_player2.y
        obj_player1.state = 64
        obj_player1.image_index = 0
        image_index = 0
        sprite_index = spr_doorkeyopen
        image_speed = 0.35
        instance_create((x + 50), (y + 50), obj_lock)
        global.key_inv = 0
    }
}
with (obj_player)
{
    if (place_meeting(x, y, obj_keydoor) && ((other.sprite_index == spr_doorvisited) && (key_up && (((state == 0) || ((state == 69) || ((state == 70) || (state == 91)))) && ((y == (other.y + 50)) && ((!instance_exists(obj_noisesatellite)) && ((!instance_exists(obj_fadeout)) && ((state != 78) && ((state != 64) && (state != 61))))))))))
    {
        mach2 = 0
        image_index = 0
        obj_camera.chargecamera = 0
        obj_player1.sprite_index = obj_player1.spr_lookdoor
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        obj_player1.image_index = 0
        obj_player1.state = 78
        obj_player1.mach2 = 0
        if (instance_exists(obj_player2) && (global.coop == 1))
        {
            obj_player2.sprite_index = obj_player2.spr_lookdoor
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player2.image_index = 0
            obj_player2.state = 78
            obj_player2.mach2 = 0
        }
        state = 78
        instance_create(x, y, obj_fadeout)
    }
}
if (floor(image_index) == 2)
    image_speed = 0
if ((floor(obj_player.image_index) == (obj_player.image_number - 1)) && (obj_player.state == 64))
{
    with (obj_player)
    {
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        if (instance_exists(obj_player2) && (global.coop == 1))
        {
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
        }
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}
if place_meeting(x, y, obj_doorA)
    targetDoor = "A"
if place_meeting(x, y, obj_doorB)
    targetDoor = "B"
if place_meeting(x, y, obj_doorC)
    targetDoor = "C"
if place_meeting(x, y, obj_doorD)
    targetDoor = "D"

