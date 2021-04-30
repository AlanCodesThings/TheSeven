/// @description Initialise values and states
// You can write your code in this editor

//Set walking speed and collision detection
speedWalk = 1.75;
checkWalk = speedWalk + 2;

//hitpoints
hitpoints = 50;
maxHitpoints = hitpoints;
hpPercent = 1;

swordCreated = false;
state = PLAYERSTATE.FREE;

moveX = 0;
moveY = 0;
tilemap = layer_tilemap_get_id("WallTiles");
enum PLAYERSTATE
{
	FREE, 
	ATTACK,
	ABILITY
}

instance_create_layer(x,y,"Instances", objGrid);
instance_create_layer(x,y,"Instances", objCamera);
instance_create_layer(x,y,"Objects",objWeaponspawner);