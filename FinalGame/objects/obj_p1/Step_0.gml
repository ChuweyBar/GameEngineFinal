/// @description Insert description here
// You can write your code in this editor
spd = 0.75;
if keyboard_check(vk_lshift) {
	spd *= 1.5;
}

if keyboard_check(ord("A"))
{
    x = x - spd;
}
if keyboard_check(ord("D"))
{
    x = x + spd;
}
if keyboard_check(ord("W"))
{
    y = y - spd;
}
if keyboard_check(ord("S"))
{
    y = y + spd;
}

if place_meeting(x,y,obj_wall_top) {
	y = y + spd;
}
if place_meeting(x,y,obj_wall_bot) {
	y = y - 5;
}
if place_meeting(x,y,obj_wall_left) {
	x = x + 5;
}
if place_meeting(x,y,obj_wall_right) {
	x = x - 5;
}

if place_meeting(x,y,obj_enemy) {
	game_end();
}
