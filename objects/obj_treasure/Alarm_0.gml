obj_player.state = 0
with (instance_create(x, y, obj_smallnumber))
    number = "1000"
if (player == 1)
    global.collect += 1000
else if (player == 2)
    global.collectN += 1000
instance_destroy()

