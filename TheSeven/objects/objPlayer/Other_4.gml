/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("WallTiles");

if(!instance_exists(objHealthBar)){
	instance_create_layer(window_x/3 - 96 ,window_get_height() - 210,"Instances", objHealthBar)
}
if(!instance_exists(objManaBar)){
	instance_create_layer(window_x/1.5 - 96 ,window_get_height() - 210,"Instances", objManaBar)
}
if(!instance_exists(objCamera)){
	instance_create_layer(x,y,"Instances", objCamera);
}
if(!instance_exists(objWeaponspawner)){
	instance_create_layer(x,y,"Objects",objWeaponspawner);
}