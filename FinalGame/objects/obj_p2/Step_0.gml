/// @description Insert description here
// You can write your code in this editor
spd = 0.75;
if keyboard_check(vk_rshift) {
	spd *= 1.5;
}

if keyboard_check(vk_left)
{
    x = x - spd;
}
if keyboard_check(vk_right)
{
    x = x + spd;
}
if keyboard_check(vk_up)
{
    y = y - spd;
}
if keyboard_check(vk_down)
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
