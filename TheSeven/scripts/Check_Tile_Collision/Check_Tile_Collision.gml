// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_Tile_Collision(){
	//Check for collision with the tilemap
	//argument 0 is the current x location, arg1 is the y loc,
	//arg2 is x distance to check for, arg3 is y distance to check for, arg4 is tilemap
	var  moveX = argument2;
	var moveY = argument3;
	if(tilemap_get_at_pixel(argument4,bbox_right + argument2, argument1) != 0){
		moveX = 0;
	}
	if(tilemap_get_at_pixel(argument4,bbox_left - argument2, argument1) != 0){
		moveX = 0;
	}
	if(tilemap_get_at_pixel(argument4,argument0, bbox_top - argument3) != 0){
		moveY = 0;
	}
	if(tilemap_get_at_pixel(argument4,argument0, bbox_bottom + argument3) != 0){
		moveY = 0;
	}
	
	return [moveX, moveY];
}