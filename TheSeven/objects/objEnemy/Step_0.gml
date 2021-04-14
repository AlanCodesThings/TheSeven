/// @description Insert description here
// You can write your code in this editor

xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);
distance = abs(xdifference + ydifference);

if(xdifference <= aggroRadius && ydifference <= aggroRadius){
	myPath = path_add();
	mp_grid_path(movementGrid, myPath, x, y, objPlayer.x, objPlayer.y, true);
	path_start(myPath, 3, path_action_stop, true);
	image_speed = enemyImageSpeed;
	
	var enemyID = instance_place(x,y,objEnemy);
	if (enemyID != noone){
		if( id >= enemyID){
			path_end();	
		}
	}
	


	if (xdifference <= enemySpacing && ydifference <= enemySpacing){
		path_end();
		sprite_index = attackSprite;
		if(alarm[0] == -1){
		alarm[0] = (room_speed * 1);
		}
	}else{
		sprite_index = enemySprite
	}
	
}

if(hp <= 0){
	instance_destroy();	
}