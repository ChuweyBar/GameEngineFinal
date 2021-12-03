/// @description Insert description here
// You can write your code in this editor

speed = 2;
if (keyboard_check(ord("A"))) {
	if (keyboard_check(ord("W"))) {
		direction = 135;
	} else if (keyboard_check(ord("S"))) {
		direction = 225;
	} else {
		direction = 180;
	}
} else if (keyboard_check(ord("D"))) {
	if (keyboard_check(ord("W"))){
		direction = 45;
	} else if (keyboard_check(ord("S"))) {
		direction = 315;
	} else {
		direction = 0;
	}
} else if (keyboard_check(ord("W"))) {
	direction = 90;
} else if (keyboard_check(ord("S"))) {
	direction = 270;
}else {
	speed = 0;
}