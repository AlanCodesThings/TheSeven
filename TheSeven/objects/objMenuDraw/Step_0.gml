/// @description Check for btn hovers and clicks

//Convert mouse coordinates to gui coordinates
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

//If escape menu is being pressed
if(escapeMenu){
	//Make a rectangle around each button and check if the user is hovering inside the rectangle
	//If user is hovering, make variable = true so gui can change the color. If user clicks while
	//hovering a button, that = clicking the button. 
	
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 - 180,display_get_width()/2 + 200, display_get_height()/2 -180 +32))
	{
		hoverSave = true;
		if(mouse_check_button_released(mb_left)){
			//ObjPlayer needs to be activated so that it's data can be accessed and saved
			instance_activate_object(objPlayer);
			Save_Game();
			//Now deactivate objPlayer so he can't start moving
			instance_deactivate_object(objPlayer);		
		}
	}
	else
	{
		//if not in the rectangle then user is not hovering
		hoverSave = false;
	}
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 - 85,display_get_width()/2 + 200, display_get_height()/2 -85 +32))
	{
		hoverLoad = true;
		if(mouse_check_button_released(mb_left)){
			
			show_debug_message("Clicked Load");	
		}
	}
	else
	{
		hoverLoad = false;
	}
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 + 10,display_get_width()/2 + 200, display_get_height()/2 -10 +32))
	{
		hoverOptions = true;
		if(mouse_check_button_released(mb_left)){
			show_debug_message("Clicked Options");	
		}
	}
	else
	{
		hoverOptions = false;
	}
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 + 105,display_get_width()/2 + 200, display_get_height()/2 +105 +32))
	{
		hoverExitMenu = true;
		if(mouse_check_button_released(mb_left)){
			show_debug_message("Clicked Exit To Menu");	
		}
	}
	else
	{
		hoverExitMenu = false;
	}
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 + 200,display_get_width()/2 + 200, display_get_height()/2 +200 +32))
	{
		hoverExitGame = true;
		if(mouse_check_button_released(mb_left)){
			game_end();
			show_debug_message("Clicked Exit To Game");	
		}
	}
	else
	{
		hoverExitGame = false;
	}
}

//Hover works same as above - this is for the ressurect button hover
if(global.playerDead){
	if(point_in_rectangle(mouseX,mouseY,display_get_width()/2 - 305,display_get_height()/2 +100 -40,display_get_width()/2 + 305, display_get_height()/2 + 100 + 40)){
		hoverRes = true;	
		if(mouse_check_button_released(mb_left)){
			instance_activate_all();
			//Respawn at camp and reset some variables
			objPlayer.state = PLAYERSTATE.FREE;	
			objPlayer.sprite_index = sPlayerdownidol;
			global.playerDead = false;
			objPlayer.level = 0;
			objPlayer.hitpoints = objPlayer.maxHitpoints;
			room_goto(Camp);
		}
	}
	else{
		hoverRes = false;	
		
	}
}
