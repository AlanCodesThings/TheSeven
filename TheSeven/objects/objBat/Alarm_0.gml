/// @description Hit the player

//Check range to player
if (xdifference <= enemySpacing && ydifference <= enemySpacing){
	
	//player takes damage
	objPlayer.hitpoints	-= damage;

	// Initialise variables to store IDs
	var	currentenemyHit = undefined;
	var currenenemytHitID = undefined;
	
	//Create a damage number object and store its ID 
	if (objPlayer.hitpoints > 0){
		currentenemyHit = instance_create_layer(objPlayer.x + irandom_range(-5,5), objPlayer.y + irandom_range(-5,5), "Objects", objPlayerhit)
		currenenemytHitID = currentenemyHit.id;
	}
	
	//If there is a damage number object from the above hit
	if (currenenemytHitID != undefined){
	if (currentenemyHit.dmgnumberReset == true){
		currentenemyHit.damage = damage;
				}
		}
}
