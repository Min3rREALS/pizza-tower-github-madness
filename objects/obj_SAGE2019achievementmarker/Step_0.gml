if (picy == 640)
{
    if ((snickshotgun == 0) && (global.SAGEshotgunsnick == 1))
    {
        up = 1
        sprite = 1356
        snickshotgun = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((dungeonbackup == 0) && (global.SAGEdungeonbackup == 1))
    {
        up = 1
        sprite = 1357
        dungeonbackup = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((srank == 0) && (global.SAGEsrank == 1))
    {
        up = 1
        sprite = 1358
        srank = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((snicksrank == 0) && (global.SAGEsnicksrank == 1))
    {
        up = 1
        sprite = 1359
        snicksrank = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((combo10 == 0) && (global.SAGEcombo10 == 1))
    {
        up = 1
        sprite = 1360
        combo10 = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((secret == 0) && (global.SAGEsecret == 1))
    {
        up = 1
        sprite = 1361
        secret = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((knight == 0) && (global.SAGEknight == 1))
    {
        up = 1
        sprite = 1362
        knight = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((toppin == 0) && (global.SAGEtoppin == 1))
    {
        up = 1
        sprite = 1363
        toppin = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
    else if ((treasure == 0) && (global.SAGEtreasure == 1))
    {
        up = 1
        sprite = 1364
        treasure = 1
        alarm[0] = 250
        scr_soundeffect(sfx_collectgiantpizza)
    }
}
if (picy == 300)
    up = 0
if (up == 1)
    picy -= 10

