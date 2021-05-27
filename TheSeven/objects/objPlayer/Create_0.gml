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
maxMana = 80
manaPoints = maxMana;
abilityCost = 5;

swordCreated = false;
abilityCreated = false;
state = PLAYERSTATE.FREE;
stateAttack = ATTACKSTATE.AUTO;
abilityState = ABILITYSTATE.GETSUGA;
hasSwung = false;
abilitySoundPlayed = false;

dashDistance = 0;

moveX = 0;
moveY = 0;

maxLevel = 0;
level = 0;
coinCount = 0;
storedCoins = 0;

tilemap = layer_tilemap_get_id("WallTiles");

enum PLAYERSTATE
{
	FREE, 
	ATTACK,
	ABILITY,
	DASH
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


//var tmp_layer = layer_get_id(tmp_layer);
window_x = window_get_width();
window_y = window_get_height();

instance_create_layer(window_x/3 - 96 ,window_get_height() - 210,"Instances", objHealthBar)
instance_create_layer(window_x/1.5 - 96 ,window_get_height() - 210,"Instances", objManaBar)
instance_create_layer(x,y,"Instances", objCamera);
instance_create_layer(x,y,"Objects",objWeaponspawner);