/// @description Insert description here
// You can write your code in this editor

xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);

myPath = path_add();
mp_grid_path(movementGrid, myPath, x, y, objPlayer.x, objPlayer.y, false);
path_start(myPath, 3, path_action_stop, true);


if (xdifference <= 50 && ydifference <= 50){
	path_end();
	if(alarm[0] == -1){
		alarm[0] = (room_speed * 1);
	}
}
show_debug_message(hp);