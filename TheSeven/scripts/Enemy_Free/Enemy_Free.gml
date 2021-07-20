function Enemy_Free(){

if (hp <= 0)
{
	enemyState = ENEMYSTATE.DEAD;

}

//Store difference between player and enemy
xdifference = abs(objPlayer.x - x);
ydifference = abs(objPlayer.y - y);

//Flip enemy to face player

if(x - objPlayer.x > 0){
	if(flip){
	image_xscale = -1;	
	}else{
	image_xscale = 1;	
	}
}else{
	if(flip){
	image_xscale = 1;
	}else{
	image_xscale = -1;	
	}
}

//Change the animation speed of enemy
image_speed = enemyImageSpeed;

//Check if player is in aggro radius 
if (hp > 0){
	if(xdifference <= aggroRadius && ydifference <= aggroRadius)
	{
		
		//Move toward the player using pathfinding
		myPath = path_add();
		if(instance_exists(objPlayer))
		{
			if(room == Cave){
				var xx = (objPlayer.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2;
				var yy = (objPlayer.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2;
				if(mp_grid_path(movementGrid, myPath, x, y, xx, yy,false))
				{
					path_start(myPath, 1, path_action_stop, true);
				}
			}
			if(room == BossOne)
			{
				var xx = (objPlayer.x div 16) * 16 + 16/2;
				var yy = (objPlayer.y div 16) * 16 + 16/2;
				if(mp_grid_path(movementGrid, myPath, x, y, xx, yy,true))
				{
					if(alarm[1] == -1)
					{
						alarm[1] = room_speed * 1;
					}
				}
			}
		}
		//Collision detection between other enemies
		var enemyID = instance_place(x,y,objEnemy);
		if (enemyID != noone)
		{
			//Enemy with higher ID has their path ended (both enemies will run this code)
			if( id >= enemyID)
			{
				path_end();	
			}
		}
	}

	//Stop the enemy when it is in autoattacking distance
	
	if (object_index != objBoss)
	{
		if(xdifference <= enemySpacing && ydifference <= enemySpacing){
			path_end();
		
			//Change to attack sprite and loop through alarm to autoattac
			if(alarm[0] == -1)
			{
				sprite_index = attackSprite;
				alarm[0] = (room_speed * 1);
			}
		}
		else
		{
			sprite_index = enemySprite
		}
	}
	
//-------------------------------------BOSS ONE------------------------------------------------	
	if(object_index = objBoss){
		if(alarm[2] == -1){
			alarm[2] = room_speed * 3;
		}
		if(currentAbility == "Slash" && abilityUsed == false)
		{
			BossOneSlash();	
		}else if(path_index == -1){
			//show_debug_message("no path");
			//sprite_index = sprBossOneWalk;
		}
	}	
	
}

}