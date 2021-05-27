/// @description Insert description here
// You can write your code in this editor
var scrnWidth = display_get_width()/2;
var scrnHeight = display_get_height()/2;

if(exitNotif){
	instance_deactivate_all(self);
	draw_sprite(sprExitNotif,0,display_get_width()/2,display_get_height()/2);		
	draw_sprite_ext(sprExitTown,0,scrnWidth -225, scrnHeight + 170, 1,1,0,(hoverExitTown ? c_grey : c_white), 1);
	draw_sprite_ext(sprExitCont,0,scrnWidth + 225, scrnHeight + 170, 1,1,0,(hoverContinue ? c_grey : c_white), 1);
}