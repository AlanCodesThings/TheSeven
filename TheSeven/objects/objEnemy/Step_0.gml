/// @description Move to Player and Collide with other Enemies

//Store difference between player and enemy
xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);


//Check if player is in aggro radius 
if(xdifference <= aggroRadius && ydifference <= aggroRadius){
	//Move toward the player using pathfinding
	myPath = path_add();
	mp_grid_path(movementGrid, myPath, x, y, objPlayer.x, objPlayer.y, true);
	path_start(myPath, 3, path_action_stop, true);
	image_speed = enemyImageSpeed;
	
	//Collision detection between other enemies
	var enemyID = instance_place(x,y,objEnemy);
	if (enemyID != noone){
		//Enemy with higher ID has their path ended (both enemies will run this code)
		if( id >= enemyID){
			path_end();	
		}
	}
	

	//Stop the enemy when it is in autoattacking distance
	if (xdifference <= enemySpacing && ydifference <= enemySpacing){
		path_end();
		
		//Change to attack sprite and loop through alarm to autoattack
		sprite_index = attackSprite;
		if(alarm[0] == -1){
		objPlayer.hitpoints	-= damage;
		alarm[0] = (room_speed * 1);
		}
	}else{
		//if not in auto attacking distance player change back to normal sprite
		sprite_index = enemySprite
	}
	
}

//Kill enemy if health reaches 0
if(hp <= 0){
	instance_destroy();	
}