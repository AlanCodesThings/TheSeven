/// @description Collision with player

//If it collides with player, player takes 5 damage and destroy the arrow
if(place_meeting(x,y,objPlayer) && canhit == true){
	objPlayer.hitpoints -= 5;
	canhit = false;
	instance_destroy();
}