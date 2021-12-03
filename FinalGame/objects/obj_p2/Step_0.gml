/// @description Insert description here
// You can write your code in this editor

speed = 2;
if (keyboard_check(vk_left)) {
	if (keyboard_check(vk_up)) {
		direction = 135;
	} else if (keyboard_check(vk_down)) {
		direction = 225;
	} else {
		direction = 180;
	}
} else if (keyboard_check(vk_right)) {
	if (keyboard_check(vk_up)){
		direction = 45;
	} else if (keyboard_check(vk_down)) {
		direction = 315;
	} else {
		direction = 0;
	}
} else if (keyboard_check(vk_up)) {
	direction = 90;
} else if (keyboard_check(vk_down)) {
	direction = 270;
}else {
	speed = 0;
}