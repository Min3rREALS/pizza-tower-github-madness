if (obj_player.character == "S")
    instance_destroy()
if (x != obj_player1.x)
    image_xscale = (-sign((x - obj_player1.x)))
if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if key_up2
            other.dialogue += 1
    }
    with (obj_tv)
    {
        if (global.chateaurank == "none")
        {
            if (other.dialogue == 0)
                message = ""
            if (other.dialogue == 1)
                message = "BOO!"
            if (other.dialogue == 2)
                message = "HAHA DONT WORRY IM NOT DEAD YET"
            if (other.dialogue == 3)
                message = "HERE IS AN HARDER VERSION OF PIZZASCAPE"
            if (other.dialogue == 4)
                message = "THIS VERSION INCLUDES DECORATIONS"
            if (other.dialogue == 5)
                message = "ALL MADE BY THE PIZZA TOWER DISCORD"
            if (other.dialogue == 6)
                message = "I HOPE YOU ENJOY THIS SHORT LEVEL"
            if (other.dialogue == 7)
                message = "AND HAPPY HALLOWEEN!"
            if (other.dialogue == 8)
                message = " "
            showtext = 1
            alarm[0] = 2
        }
        else if (global.chateaurank != "s")
        {
            if (other.dialogue == 0)
                message = ""
            if (other.dialogue == 1)
                message = "CONGRATS!"
            if (other.dialogue == 2)
                message = "THIS DEMO DOESNT HAVE MUCH MORE"
            if (other.dialogue == 3)
                message = "BUT YOU CAN TRY GETTING AN S RANK!"
            if (other.dialogue == 4)
                message = " "
            showtext = 1
            alarm[0] = 2
        }
        else if (global.chateaurank == "s")
        {
            if (other.dialogue == 0)
                message = ""
            if (other.dialogue == 1)
                message = "ALL DONE!"
            if (other.dialogue == 2)
                message = "SEE YOU NEXT DEMO!"
            if (other.dialogue == 3)
                message = " "
            showtext = 1
            alarm[0] = 2
        }
    }
}
else
    dialogue = 0

