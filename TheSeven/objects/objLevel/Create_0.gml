/// @description Insert description here
// You can write your code in this editor
randomize();


//Get tile layer map id
var _wall_map_id = layer_tilemap_get_id("WallTiles");



//Set up grid
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;
grid_ = ds_grid_create(width_, height_);
//Set up movement grid for enemy
globalvar movementGrid;
movementGrid = mp_grid_create(0,0,width_,height_, 32, 32);

ds_grid_set_region(grid_,0,0,width_,height_,VOID);




//Create the controller while will walk around the grid randomly making floors

var _controller_x = width_ div 2;
var _controller_y = height_ div 2;
var _controller_direction = irandom(3);
var _steps = 300;


var _player_start_x = _controller_x * CELL_WIDTH + CELL_WIDTH /2;
var _player_start_y = _controller_y * CELL_HEIGHT + CELL_HEIGHT/2;
instance_create_layer(_player_start_x,_player_start_y, "Instances", objPlayer);

var _direction_change_odds = 1;

// Repeat this _steps number of time (bigger = more tiles)
repeat (_steps){
	grid_[# _controller_x, _controller_y] = FLOOR;	
	var odds = 30;
	var ex = _controller_x * CELL_WIDTH + CELL_WIDTH /2;
	var ey = _controller_y * CELL_HEIGHT + CELL_HEIGHT /2;
	if(point_distance(ex,ey,objPlayer.x, objPlayer.y) > 80 && irandom(odds) == odds) {
		instance_create_layer(ex,ey,"Instances",objBat);	
		
	}
	
	
	

	// Should the controller make a direction change
	if( irandom(_direction_change_odds) == _direction_change_odds){
		//Change the direction
		_controller_direction = irandom(3);
	}
	// Move the controller
	var _x_direction = lengthdir_x(1, _controller_direction * 90);
	var _y_direction = lengthdir_y(1, _controller_direction * 90);
	_controller_x += _x_direction;
	_controller_y += _y_direction;
	
	// Make sure we dont go outside the grid
	if(_controller_x < 2 || _controller_x >= width_ - 2){
		_controller_x += -_x_direction * 2;	
	}
	if(_controller_y < 2 || _controller_y >= height_ - 2){
		_controller_y += -_y_direction * 2;	
	}
}

for (var _y = 1; _y < height_ -1; _y++) {
	for (var _x = 1; _x < width_ -1; _x++){
		if(grid_[# _x, _y] != FLOOR){
			
			
			var _north_tile =grid_[# _x, _y -1] == VOID;
			var _west_tile =grid_[# _x -1, _y] == VOID;
			var _east_tile  =grid_[# _x + 1, _y] == VOID;
			var _south_tile  =grid_[# _x, _y +1] == VOID;
			
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			if(_tile_index == 1){
					grid_[# _x, _y] = FLOOR
			}
		}
	}
}

for (var _y = 1; _y < height_ -1; _y++) {
	for (var _x = 1; _x < width_ -1; _x++){
		if(grid_[# _x, _y] != FLOOR){
			mp_grid_add_cell(movementGrid, _x,_y);
			var _north_tile =grid_[# _x, _y -1] == VOID;
			var _west_tile =grid_[# _x -1, _y] == VOID;
			var _east_tile  =grid_[# _x + 1, _y] == VOID;
			var _south_tile  =grid_[# _x, _y +1] == VOID;
			
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;
			tilemap_set(_wall_map_id, _tile_index, _x,_y);
			
		}
	}
}
/*
for(var xx = 0; xx<tilemap_get_width(_wall_map_id); xx++){
	for(var yy = 0; yy<tilemap_get_height(_wall_map_id); yy++){
		var data = tilemap_get(_wall_map_id, xx, yy)
		//If cell has a tile in it then add it to the movement grid as an obstacle
		if (data != 0){
			mp_grid_add_cell(movementGrid,xx,yy);
			show_debug_message("cell added")
		}
	}
}
*/