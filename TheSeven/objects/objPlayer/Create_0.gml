/// @description Initialise values and states
// You can write your code in this editor

//Set walking speed and collision detection
speedWalk = 1.5;
checkWalk = speedWalk + 2;

//hitpoints
hitpoints = 50;
maxHitpoints = hitpoints;
hpPercent = 1;

//manapoints and ability cost (ability cost will change based on ability equipped)
maxMana = 80
manaPoints = maxMana;
abilityCost = 5;

//experience and level
experience = 0;
expToNextLevel = 17;
expPercent = experience/expToNextLevel;
level = 1;

//Weapon/ability checks
swordCreated = false;
abilityCreated = false;

//Initialise states
state = PLAYERSTATE.FREE;
stateAttack = ATTACKSTATE.AUTO;
abilityState = ABILITYSTATE.GETSUGA;

//Sound Checks
hasSwung = false;
abilitySoundPlayed = false;

//Initialise movement values
dashDistance = 0;
moveX = 0;
moveY = 0;

//Initialise progression values
maxLevel = 0;
level = 0;
coinCount = 0;
storedCoins = 0;

//Initialise player dead check
global.playerDead = false;

//Initialise tilemap being used for collisions
tilemap = layer_tilemap_get_id("WallTiles");

//Setup states
enum PLAYERSTATE
{
	FREE, 
	DEAD,
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

//Initialise ui elements
instance_create_layer(window_get_width()/3 - 96 ,window_get_height() - 210,"Instances", objHealthBar)
instance_create_layer(window_get_width()/1.5 - 96 ,window_get_height() - 210,"Instances", objManaBar)
instance_create_layer(window_get_width()/2 - 250 ,window_get_height() -35,"Instances", objExpBar)

