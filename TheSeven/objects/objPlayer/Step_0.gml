/// @description Insert description here
// You can write your code in this editor


//Check for keyboard input and set direction

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Move the player based on keyboard input and check for collisions

var bbox_side;
/*
//Grid Collision with Generated Level
if(hInput > 0){
	if(Grid_Place_Meeting(self, objLevel.grid_)){
		x = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right -x;
		moveX = 0;
	}
} else if( hInput < 0 ){
	if(Grid_Place_Meeting(self, objLevel.grid_)){
		x = bbox_left&~(CELL_WIDTH - 1);
		x += CELL_WIDTH + x - bbox_left;
		moveX = 0;
	}
		
}

if (vInput > 0){
	if(Grid_Place_Meeting(self, objLevel.grid_)){
		y = bbox_bottom&~(CELL_HEIGHT-1);
		y-= bbox_bottom -y;
		moveY = 0;
	}
	
} else if (vInput < 0){
	if(Grid_Place_Meeting(self, objLevel.grid_)){
		y = bbox_top&~(CELL_HEIGHT-1);
		y += CELL_HEIGHT + y - bbox_top;
		moveY = 0;
	}
}
*/



//TILE COLLISIONS
if(tilemap_get_at_pixel(tilemap,bbox_right + speedWalk, y) != 0){
	x = round(x);
	while(tilemap_get_at_pixel(tilemap,bbox_right,y)==0){
		x+=1;	
	}
	while(tilemap_get_at_pixel(tilemap,bbox_right,y)!=0){
		x-=1;	
	}
	moveX=0;
}
if(tilemap_get_at_pixel(tilemap,bbox_left + speedWalk, y) != 0){
	x = round(x);
	while(tilemap_get_at_pixel(tilemap,bbox_left,y)==0){
		x-=1;	
	}
	while(tilemap_get_at_pixel(tilemap,bbox_left,y)!=0){
		x+=1;	
	}
	moveX = 0;
}
if(tilemap_get_at_pixel(tilemap,x, bbox_bottom + speedWalk) != 0){
	y = round(y);
	while(tilemap_get_at_pixel(tilemap,x,bbox_bottom)==0){
		y+=1;	
	}
	while(tilemap_get_at_pixel(tilemap,x,bbox_bottom)!=0){
		y-=1;	
	}
	moveY = 0;
}
if(tilemap_get_at_pixel(tilemap,x, bbox_top + speedWalk) != 0){
	y = round(y);
	while(tilemap_get_at_pixel(tilemap,x,bbox_top)==0){
		y-=1;	
	}
	while(tilemap_get_at_pixel(tilemap,x,bbox_top)!=0){
		y+=1;	
	}
	moveY = 0;
}


switch (state) 
{
	case PLAYERSTATE.FREE:
		Player_Free();
		break;
	case PLAYERSTATE.ATTACK:
		Weapon_Sword();
		break;
	case PLAYERSTATE.ABILITY:
		Player_Ability();
		break;
		
	
	
}


//Dont let health under 0 or over max
if(hitpoints <0){
	hitpoints =0;	
}

if(hitpoints > maxHitpoints){
	hitpoints = maxHitpoints;	
}

//Get hp % for health globe
hpPercent = hitpoints/maxHitpoints;