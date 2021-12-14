/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_enemy)) {
	game_end();
}

frameCounter += 1;
spawnPerFrame = global.difficulty*120;

if (frameCounter == 1200 or frameCounter == 2400) {
	if (global.difficulty != 1) {
		global.difficulty -= 1;
	}
}

if(frameCounter % spawnPerFrame == 0)  {
	approach = choose("top","left","right","bot");
	spawnX = 0;
	spawnY = 0;
	if (approach == "top") {
		spawnX = random_range(0,200);
		spawnY = random_range(-20,-1);
	} else if (approach == "bot") {
		spawnX = random_range(0,200);
		spawnY = random_range(201,220);
	} else if (approach == "left") {
		spawnX = random_range(-20,-1);
		spawnY = random_range(0,200);
	} else if (approach == "right") {
		spawnX = random_range(201,220);
		spawnY = random_range(0,200);
	}
    instance_create_layer(spawnX, spawnY, "instances", obj_enemy);
}