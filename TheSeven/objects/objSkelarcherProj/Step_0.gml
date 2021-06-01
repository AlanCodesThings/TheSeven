/// @description Collision with player

//If it collides with player, player takes 5 damage and destroy the arrow
	var	currentenemyHit = undefined;
	var currenenemytHitID = undefined;
if(place_meeting(x,y,objPlayer) && objPlayer.hitpoints > 0 && canhit == true){
	objPlayer.hitpoints -= damage;
	currentenemyHit = instance_create_layer(objPlayer.x + irandom_range(-5,5), objPlayer.y + irandom_range(-5,5), "Objects", objPlayerhit)
	currenenemytHitID = currentenemyHit.id;	
		if (currenenemytHitID != undefined){
			if (currentenemyHit.dmgnumberReset == true){
			currentenemyHit.damage = damage;}}   // creating unique ids for damage numbers when enemy is hit so damage numbers can show up unique to the arrow
	canhit = false;
	instance_destroy();
}
distTrav += 1;
if (distTrav > 100){
	instance_destroy();
}

