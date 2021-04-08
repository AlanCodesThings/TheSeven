/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,objPlayer))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) - 768)
	with(objPlayer){
		y-= 200;	
	}
}