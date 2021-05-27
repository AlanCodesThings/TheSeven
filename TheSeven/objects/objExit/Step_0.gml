/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objPlayer)){
	if(keyboard_check_pressed(vk_enter)){
		
		if(room == Camp){
		show_debug_message("check")
		room_goto(Cave)
		}
		if(room = Cave){
			if((objPlayer.level + 1) mod 5 != 0){
				objPlayer.level++;
				room_restart();
			}else{
				exitNotif = true;
			}
		}
	}
}

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
if(exitNotif)
{
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -225 - 191, display_get_height()/2 + 170 - 32,display_get_width()/2 - 225 + 191, display_get_height()/2 + 170 + 32))
	{
		hoverExitTown = true;
		if(mouse_check_button_released(mb_left)){
			instance_activate_all();
			objPlayer.storedCoins += objPlayer.coinCount;
			room_goto(Camp);	
		}
	}
	else
	{
		hoverExitTown = false;	
	}
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 + 225 - 191, display_get_height()/2 + 170 - 32,display_get_width()/2 + 225 + 191, display_get_height()/2 + 170 + 32))
	{
		hoverContinue = true;
		if(mouse_check_button_released(mb_left)){
			instance_activate_all();
			objPlayer.level++;
			room_restart();
		}
	}
	else
	{
		hoverContinue = false;	
	}
	
}
else
{
	hoverExitTown = false;
	hoverContinue = false;
}