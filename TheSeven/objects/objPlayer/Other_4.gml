/// @description Some checks for new room

//Make sure the collision tilemap is stored for each new room
tilemap = layer_tilemap_get_id("WallTiles");

//Make sure all the necessary ui elements are drawn
if(!instance_exists(objHealthBar)){
	instance_create_layer(window_get_width()/3 - 96 ,window_get_height() - 210,"Instances", objHealthBar)
}
if(!instance_exists(objManaBar)){
	instance_create_layer(window_get_width()/1.5 - 96 ,window_get_height() - 210,"Instances", objManaBar)
}

