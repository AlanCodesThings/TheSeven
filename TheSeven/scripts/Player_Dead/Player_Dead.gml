// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Dead(){
	show_debug_message("in player state dead");
	sprite_index = sPlayerDead;
	if (image_index <= 5){
		y+=0.2;
	}
	if( image_index >= 14){
	objPlayer.level = 0;
	objPlayer.hitpoints = objPlayer.maxHitpoints;
	room_goto(Camp);
	sprite_index = sPlayerdownidol;
	state = PLAYERSTATE.FREE;}
}