// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Dead(){
	
	sprite_index = sprBatDead;
	if (floor(image_index) == 7)
	{
		instance_destroy();	
	}
	
}