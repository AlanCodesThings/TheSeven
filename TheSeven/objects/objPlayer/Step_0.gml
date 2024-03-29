/// @description State change, tile col, hp/mana 


//Check for keyboard input and set direction

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));



var bbox_side;
//TILE COLLISIONS - Player can't walk into walls
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
	case PLAYERSTATE.DEAD:
		Player_Dead();
		break;
	case PLAYERSTATE.ATTACK:
		Weapon_Sword();
		break;
	case PLAYERSTATE.ABILITY:
		Player_Ability();
		break;
	case PLAYERSTATE.DASH:
		Player_Dash();
		break;
		
	
	
}


//Dont let health under 0 or over max
if(hitpoints <0){
	hitpoints =0;	
}

if(hitpoints > maxHitpoints){
	hitpoints = maxHitpoints;	
}
//dont let mana go under 0 
if(manaPoints <= 0){
	manaPoints = 0;	
}
//level the player up
if(experience >= expToNextLevel){
	level++;
	var leftover = experience - expToNextLevel;
	experience = 0 + leftover;
	expToNextLevel += 10;
}


//Get hp % for health globe
hpPercent = hitpoints/maxHitpoints;
//Get mana % for mana globe
manaPercent = manaPoints/maxMana;
//Get expereince % for exp bar
expPercent = experience/expToNextLevel;

