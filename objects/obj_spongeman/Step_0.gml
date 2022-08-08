/// @description Insert description here
// You can write your code in this editor
x = median((x - maxspeed), obj_player1.x, (x + maxspeed))
y = median((y - maxspeed), obj_player1.y, (y + maxspeed))
if place_meeting(x,y,obj_player)
game_end()