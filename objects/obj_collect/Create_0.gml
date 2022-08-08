with (other.id)
{
    sprite_index = choose(spr_xmastopping1, spr_xmastopping2, spr_xmastopping3, spr_xmastopping4, spr_xmastopping5)
    image_speed = 0.35
    global.collected = 0
    global.collectsound = 0
    depth = 4
}
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1

