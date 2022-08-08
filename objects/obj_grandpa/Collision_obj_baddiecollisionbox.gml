with (other.id)
{
    if (instance_exists(baddieID) && (baddieID != other.id))
    {
        if (((baddieID.state == 106) && (baddieID.thrown == 1)) || (obj_player.state == 43))
        {
            instance_destroy()
            instance_destroy(baddieID)
            instance_destroy(other.id)
        }
    }
}

