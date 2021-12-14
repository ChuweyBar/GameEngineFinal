/// @description Insert description here
// You can write your code in this editor

if (onP1) {
	obj_p1.sprite_index = spr_sqrBP;
} else {
	obj_p1.sprite_index = spr_sqrB;
}
if (onP2) {
	obj_p2.sprite_index = spr_sqrRP;
} else {
	obj_p2.sprite_index = spr_sqrR;	
}

if (keyboard_check(vk_space)) {
	//audio_play_sound(pew,10,false);
	sprite_index = spr_circleP;
	if (onP1) {
		x = obj_p1.x;
		y = obj_p1.y;
		toP2 = true;
		onP1 = false;
		
	} else if (onP2) {
		x = obj_p2.x;
		y = obj_p2.y;
		toP1 = true;
		onP2 = false;
	}
}
speed = 0;
if (toP2){
	move_towards_point(obj_p2.x, obj_p2.y,proj_spd);
	if (place_meeting(x,y,obj_p2)) {
		sprite_index = spr_empty;
		toP2 = false;
		onP2 = true;
	}
}
if (toP1){
	move_towards_point(obj_p1.x, obj_p1.y,proj_spd);
	if (place_meeting(x,y,obj_p1)) {
		sprite_index = spr_empty;
		toP1 = false;
		onP1 = true;
	}
}
/*
if(keyboard_check(vk_space)){
	if not (toP1 or toP2) {
		if (place_meeting(x,y,obj_p1)) {
			toP2 = true;
		} else if (place_meeting(x,y,obj_p2)){
			toP1 = true;
		}
	}
}

if (toP1) {
	move_towards_point(obj_p1.x, obj_p1.y,1);
	if (place_meeting(x,y,obj_p1)) {
		toP1 = false;
	}
} else if (toP2) {
	move_towards_point(obj_p2.x, obj_p2.y,1);
	if (place_meeting(x,y,obj_p2)) {
		toP2 = false;
	}
} else {
	speed = 0;
}
*/