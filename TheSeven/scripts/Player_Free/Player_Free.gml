function Player_Free()
{
//turn off ability sound as soon as player enters free state
objPlayer.abilitySoundPlayed = false;

//calculate how to move player based on input
if(hInput != 0 || vInput != 0){
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(speedWalk,dir);
moveY = lengthdir_y(speedWalk,dir);

//check for collisions and move player and change sprite
if(hInput == 1 && place_free(x + checkWalk, y)){
	sprite_index = sPlayerright;
	x += moveX * speedWalk;
}
if(hInput == -1 && place_free(x - checkWalk, y)){
	sprite_index = sPlayerleft;
	x += moveX * speedWalk;
}
if(vInput == 1 && place_free(x, y + checkWalk)){
	sprite_index = sPlayerdown;
	y += moveY * speedWalk;
}
if(vInput == -1 && place_free(x, y - checkWalk)){
	sprite_index = sPlayerup;
	y += moveY * speedWalk;
}
}

//change to correct idol sprite if no input is given
if(hInput == 0  && vInput == 0)
{
	switch (sprite_index){
		case  sPlayerdown:
			sprite_index = sPlayerdownidol;
			break;
		case  sPlayerup:
			sprite_index = sPlayerupidol;
			break;
		case sPlayerright:
			sprite_index = sPlayerrightidol;
			break;			
		case sPlayerleft:
			sprite_index = sPlayerleftidol;
			break;		
			}
	}


//change states
if keyboard_check_pressed(vk_space){
	state = PLAYERSTATE.ATTACK;
}
if keyboard_check_pressed(ord("E")){
	state = PLAYERSTATE.ABILITY;
}
if keyboard_check_pressed(ord("Q")){
	state = PLAYERSTATE.DASH;
}
if(hitpoints <= 0 && room == Cave){
	state = PLAYERSTATE.DEAD;
}

}


