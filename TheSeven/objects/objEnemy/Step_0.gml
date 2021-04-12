/// @description Insert description here
// You can write your code in this editor

xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);
if(xdifference <= aggroRadius && ydifference <= aggroRadius){
	myPath = path_add();
	mp_grid_path(movementGrid, myPath, x, y, objPlayer.x, objPlayer.y, true);
	path_start(myPath, 3, path_action_stop, true);


	if (xdifference <= enemySpacing && ydifference <= enemySpacing){
		path_end();
		if(alarm[0] == -1){
		alarm[0] = (room_speed * 1);
		}
	}
