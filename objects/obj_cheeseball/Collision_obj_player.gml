if ((obj_player.state == 24) || (obj_player.state == 25))
{
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_destroy()
}
else
{
    obj_player.xscale = image_xscale
    obj_player.hsp = hsp
    obj_player.vsp = vsp
    obj_player.x = x
    obj_player.y = y
    obj_player.state = 11
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_destroy()
}

