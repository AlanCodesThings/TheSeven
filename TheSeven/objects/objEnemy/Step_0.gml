/// @description Insert description here
// You can write your code in this editor

xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);

myPath = path_add();
mp_grid_path(movementGrid, myPath, x, y, objPlayer.x, objPlayer.y, true);
path_start(myPath, 3, path_action_stop, true);

if (xdifference <= 50 && ydifference <= 50){
	path_end();
}
