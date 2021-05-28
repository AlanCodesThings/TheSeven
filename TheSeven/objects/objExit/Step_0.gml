/// @description Exit room checks

//If player is on exit and presses enter
if(place_meeting(x,y,objPlayer)){
	if(keyboard_check_pressed(vk_enter)){
		//if at camp - send to cave
		if(room == Camp){
		room_goto(Cave)
		}
		//if at cave, send to next level unless next level is a multiple of 5 
		if(room = Cave){
			if((objPlayer.level + 1) mod 5 != 0){
				objPlayer.level++;
				room_restart();
			}else{
				//If nxt lvl is multiple of 5, toggle exit notification check
				exitNotif = true;
			}
		}
	}
}

//Hover checking - works same as objMenuDraw
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