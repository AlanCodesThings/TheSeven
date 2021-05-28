/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape)){
	escapeMenu = !escapeMenu;
	paused = !paused;
	if(paused == false){
		instance_activate_all();	
	}
}
if(escapeMenu){
	draw_sprite(sprEscapeBlank,0,display_get_width()/2,display_get_height()/2)	
	draw_sprite_ext(sprEscapeMenuSave, 0, display_get_width()/2,display_get_height()/2 -180, 1,1,0,(hoverSave ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuLoad, 0, display_get_width()/2,display_get_height()/2 -85, 1,1,0,(hoverLoad ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuOpt, 0, display_get_width()/2,display_get_height()/2 +10, 1,1,0,(hoverOptions ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuExitMenu, 0, display_get_width()/2,display_get_height()/2 +105, 1,1,0,(hoverExitMenu ? c_grey:c_white), 1);
	draw_sprite_ext(sprEscapeMenuExitGame, 0, display_get_width()/2,display_get_height()/2 +200, 1,1,0,(hoverExitGame ? c_grey:c_white), 1);
}

if(paused){
	instance_deactivate_all(self);	
}

