/// @description Insert description here

//Create the movement grid and add wall into it

globalvar movementGrid;
movementGrid = mp_grid_create(0,0,room_width/16,room_height/16, 16, 16);

mp_grid_add_instances(movementGrid, objWall, false);

tilemap = layer_tilemap_get_id("Collision");
enemyTileMap = layer_tilemap_get_id("EnemyCollisions")
for(var xx = 0; xx<tilemap_get_width(tilemap); xx++){
	for(var yy = 0; yy<tilemap_get_height(tilemap); yy++){
		var data = tilemap_get(tilemap, xx, yy)
		show_debug_message(data);
		if (data != 0){
			mp_grid_add_cell(movementGrid,xx,yy);
			show_debug_message(data);
		}
	}
}

