/// @description Insert description here

//Create the movement grid and add wall into it
globalvar movementGrid;
movementGrid = mp_grid_create(0,0,room_width,room_height, room_width/32, room_height/32);
mp_grid_add_instances(movementGrid, objWall, false);
mp_grid_add_instances(movementGrid, objRoom, false);

