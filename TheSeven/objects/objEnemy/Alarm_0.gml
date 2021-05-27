/// @description If still within auto attack distance, attack the player
if (xdifference <= enemySpacing && ydifference <= enemySpacing){
	objPlayer.hitpoints	-= damage;

	// damage numbers displayed on player
	var	currentenemyHit = undefined;
	var currenenemytHitID = undefined;
	if (objPlayer.hitpoints > 0){
	currentenemyHit = instance_create_layer(objPlayer.x + irandom_range(-5,5), objPlayer.y + irandom_range(-5,5), "Objects", objPlayerhit)
		currenenemytHitID = currentenemyHit.id;
	}
	if (currenenemytHitID != undefined){
	if (currentenemyHit.dmgnumberReset == true){
		currentenemyHit.damage = damage;
				}
		}
}
