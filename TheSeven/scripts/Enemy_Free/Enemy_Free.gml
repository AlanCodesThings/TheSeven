// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Free(){
/// @description Move to Player and Collide with other Enemies

//Store difference between player and enemy
xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);

if(x - objPlayer.x > 0){
	image_xscale = -1;	
}else{
	image_xscale = 1;
}

image_speed = enemyImageSpeed;
//Check if player is in aggro radius 
if(xdifference <= aggroRadius && ydifference <= aggroRadius){
	//Move toward the player using pathfinding
	myPath = path_add();
	if(instance_exists(objPlayer)){
	var xx = (objPlayer.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2;
	var yy = (objPlayer.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2;
	
	if(mp_grid_path(movementGrid, myPath, x, y, xx, yy,false))
		{
		path_start(myPath, 1, path_action_stop, true);
		}
	}
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
if (hp <= 0)
{
	enemyState = ENEMYSTATE.DEAD;
}
}