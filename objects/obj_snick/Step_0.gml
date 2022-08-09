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
                message = "SNNFDONOSCNSBDIFSFSZFRXDRGXDTGDXFGDXFGDFGT"
            if (other.dialogue == 2)
                message = "EFSKGFSKRFGKSUFGXVBMXHBVRSGFRLAELAOSRGFSFHOSI"
            if (other.dialogue == 3)
                message = "YSGFUKYCFAGDRCUREGYSFKGRLGZKGCDVUGSDFRYUFGREYUF"
            if (other.dialogue == 4)
                message = "WYGERFUKYREWGFKUYGKCUYGAUWERFKYGREUKFYGUYGDRWERFE"
            if (other.dialogue == 5)
                message = "ADGFYGCYKADGFRCKAGCRJVHMXHCYKREGUKGSDFUKGGRAYUFRKSIAYUFVG"
            if (other.dialogue == 6)
                message = "RWGF8GWYRF8GSFHGISBFVKGXGVKIUGEURWIUGRWFGIGFGFGFGFGFGFSKDFGFYSGDYYERUSGF"
            if (other.dialogue == 7)
                message = "URYGFKEDYAJEGASDJYUGKUSYDCVFSMDJZFCVDAHGFAKEGFEWAFKEGADKGFYKSDKUSYGDVKUSSKDKUYUD"
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
                message = "SYDGFUKMRGRDVCKZDYXGFVKRUGSDFKR"
            if (other.dialogue == 2)
                message = "ZSYDFGVFKURYGSDFKRIUASDUYGADKYSFGSKAYD"
            if (other.dialogue == 3)
                message = "T"
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
                message = "YGSDFUKGADFYGADUCGFASDIUFCGRIEDGFRKR"
            if (other.dialogue == 2)
                message = "ADSFERSADGFRSFUSAIFGKYGKUGKIUGHUKYGYF"
            if (other.dialogue == 3)
                message = " "
            showtext = 1
            alarm[0] = 2
        }
    }
}
else
    dialogue = 0

