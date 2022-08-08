if (object_index != obj_pizzaball)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && (baddieID != other.id))
        {
            if ((baddieID.state == 106) && (baddieID.thrown == 1))
            {
                baddieID.grabbedby = other.baddieID.grabbedby
                instance_destroy()
                instance_destroy(baddieID)
                instance_destroy(other.id)
                instance_destroy(other.baddieID)
            }
        }
    }
}

