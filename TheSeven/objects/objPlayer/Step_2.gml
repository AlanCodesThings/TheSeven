/// @description Insert description here
// You can write your code in this editor
#region MOVE THE VIEW
fullViewWidth =  camera_get_view_width(view_camera[0])
halfViewWidth = fullViewWidth / 2;
fullViewHeight =camera_get_view_height(view_camera[0])
halfViewHeight = fullViewHeight / 2;
camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight);
show_debug_message(room_width - halfViewWidth)


//Account for left side of room
if(x- halfViewWidth <= 0)
{
		//Account for top left
	if(y-halfViewHeight <=0)
	{
		camera_set_view_pos(view_camera[0],0,0);	
		exit;
	}
	camera_set_view_pos(view_camera[0],0,y-halfViewHeight);
}

//Account for top of room
if(y- halfViewHeight <= 0)
{
	//Top right
	if(x + halfViewWidth >= room_width)
	{
		camera_set_view_pos(view_camera[0],fullViewWidth,0);
		exit;
	}
	camera_set_view_pos(view_camera[0],x-halfViewWidth,0);
}

//Account for right of room
if(x + halfViewWidth>= room_width)
{
	//Bottom right
	if(y + halfViewHeight >= room_height)
	{
		camera_set_view_pos(view_camera[0], room_width - fullViewWidth, room_height- fullViewHeight);	
		exit;
	}
	camera_set_view_pos(view_camera[0], room_width- fullViewWidth,y-halfViewHeight);
}

//Account for bottom of room
if(y + halfViewHeight>= room_height){
	//Bottom left
	if(x - halfViewWidth <= 0)
	{
		camera_set_view_pos(view_camera[0], 0, room_height- fullViewHeight);	
		exit;
	}
	camera_set_view_pos(view_camera[0], x - halfViewWidth,room_height- fullViewHeight);
}