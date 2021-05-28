/// @description draw menus and buttons

//Toggle escape menu and pause when user presses escape
if(keyboard_check_pressed(vk_escape)){
	escapeMenu = !escapeMenu;
	paused = !paused;
	//if not paused then reactivate all instances
	if(paused == false){
		instance_activate_all();	
	}
}

//Draw all ui elements of the escape menu when escape is pressed
if(escapeMenu){
	draw_sprite(sprEscapeBlank,0,display_get_width()/2,display_get_height()/2)	
	draw_sprite_ext(sprEscapeMenuSave, 0, display_get_width()/2,display_get_height()/2 -180, 1,1,0,(hoverSave ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuLoad, 0, display_get_width()/2,display_get_height()/2 -85, 1,1,0,(hoverLoad ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuOpt, 0, display_get_width()/2,display_get_height()/2 +10, 1,1,0,(hoverOptions ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuExitMenu, 0, display_get_width()/2,display_get_height()/2 +105, 1,1,0,(hoverExitMenu ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuExitGame, 0, display_get_width()/2,display_get_height()/2 +200, 1,1,0,(hoverExitGame ? c_grey:c_white), 1);
}

//deactivate all instances when paused
if(paused){
	instance_deactivate_all(self);	
}

//Draw a death notification and ressurect button if player is dead
if(global.playerDead){
	draw_sprite(sprDeadNotif,0,display_get_width()/2,display_get_height()/2);
	instance_deactivate_all(self);
	draw_sprite_ext(sprResurrectTown,0,display_get_width()/2,display_get_height()/2 +100,1,1,0,(hoverRes ? c_grey:c_white), 1);
	
}
