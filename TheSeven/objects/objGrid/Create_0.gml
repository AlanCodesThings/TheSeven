/// @description Create and use movement grid for players/enemies

//Create the movement grid and add wall into it

//Initialise an mp grid to have 16x16 cells just like our room assets
globalvar movementGrid;
movementGrid = mp_grid_create(0,0,room_width/16,room_height/16, 16, 16);

//Add Walls as obstacles to the grid (not currently using walls though)
mp_grid_add_instances(movementGrid, objWall, false);

//Store a map of the tile layer being used for collisions
tilemap = layer_tilemap_get_id("Collision");

//Loop through tile map to access individual cells
for(var xx = 0; xx<tilemap_get_width(tilemap); xx++){
	for(var yy = 0; yy<tilemap_get_height(tilemap); yy++){
		var data = tilemap_get(tilemap, xx, yy)
		//If cell has a tile in it then add it to the movement grid as an obstacle
		if (data != 0){
			mp_grid_add_cell(movementGrid,xx,yy);
		}
	}
}

