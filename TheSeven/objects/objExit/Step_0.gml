/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer)){
	if(keyboard_check_pressed(vk_enter)){
		
		if(room == Camp){
		show_debug_message("check")
		room_goto(Cave)
		}
		if(room = Cave){
		global.level++;
		room_restart();
		}
	}
}