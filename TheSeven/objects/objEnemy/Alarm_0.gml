/// @description If still within auto attack distance, attack the player
if (xdifference <= enemySpacing && ydifference <= enemySpacing){
	objPlayer.hitpoints	-= damage;
}

	