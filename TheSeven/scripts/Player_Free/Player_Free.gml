// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Free(){
objPlayer.abilitySoundPlayed = false;

if(hInput != 0 || vInput != 0){
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(speedWalk,dir);
moveY = lengthdir_y(speedWalk,dir);

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

if keyboard_check_pressed(vk_space){
	state = PLAYERSTATE.ATTACK;
}
if keyboard_check_pressed(ord("E")){
	state = PLAYERSTATE.ABILITY;
}

}
