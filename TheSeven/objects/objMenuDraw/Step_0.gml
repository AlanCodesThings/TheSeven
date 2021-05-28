/// @description Insert description here
// You can write your code in this editor
if(escapeMenu){
	var halfScreenWidth = display_get_width()/2;
	var halfScreenHeight = display_get_height()/2;
	var mouseX = device_mouse_x_to_gui(0);
	var mouseY = device_mouse_y_to_gui(0);
	if(point_in_rectangle(mouseX, mouseY, display_get_width()/2 -200, display_get_height()/2 -32 - 180,display_get_width()/2 + 200, display_get_height()/2 -180 +32))
	{
		hoverSave = true;
		if(mouse_check_button_released(mb_left)){
			instance_activate_object(objPlayer);
			Save_Game();
			instance_deactivate_object(objPlayer);
				
		}
	}
	else
	{
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