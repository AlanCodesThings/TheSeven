/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer)){
	if(keyboard_check_pressed(vk_enter)){
		global.level++;
		room_restart();
	}
}