with (other.id)
{
    if ((state != 4) && (other.dead == 0))
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = 4
        vsp = -10
    }
}

