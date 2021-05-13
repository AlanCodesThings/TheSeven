/// @description Initialise values and states
// You can write your code in this editor

//Set walking speed and collision detection

speedWalk = 1.5;
checkWalk = speedWalk + 2;

//hitpoints
hitpoints = 50;
maxHitpoints = hitpoints;
hpPercent = 1;

//manapoints and ability cost (ability cost will change absed on ability equipped)
manaPoints = 80;
abilityCost = 2;

swordCreated = false;
abilityCreated = false;
state = PLAYERSTATE.FREE;
stateAttack = ATTACKSTATE.AUTO;
abilityState = ABILITYSTATE.GETSUGA;

moveX = 0;
moveY = 0;
tilemap = layer_tilemap_get_id("WallTiles");

enum PLAYERSTATE
{
	FREE, 
	ATTACK,
	ABILITY
}


enum ATTACKSTATE
{
	AUTO,
	ABILITY
}
enum ABILITYSTATE
{
	GETSUGA
}



instance_create_layer(x,y,"Instances", objCamera);
instance_create_layer(x,y,"Objects",objWeaponspawner);