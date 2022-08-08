ini_open("saveData.ini")
global.strongcoldtime = ini_read_string("Time", "strongcold", "none")
ini_close()
if (levelsign == "strongcold")
{
    if (global.strongcoldtime == "none")
        visible = false
    else
        visible = true
    if (global.strongcoldtime == "s")
        image_index = 0
    if (global.strongcoldtime == "a")
        image_index = 1
    if (global.strongcoldtime == "b")
        image_index = 2
    if (global.strongcoldtime == "c")
        image_index = 3
    if (global.strongcoldtime == "d")
        image_index = 4
}

