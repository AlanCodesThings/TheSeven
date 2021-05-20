// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Dash(){

		switch (sprite_index){
			case  sPlayerdown:
				sprite_index = sPlayerdowndash;
				image_index = 0;
				break;
			case  sPlayerdownidol:
				sprite_index = sPlayerdowndash;
				image_index = 0;

				break;
			case  sPlayerup:
				sprite_index = sPlayerupdash;
				image_index = 0;
				break;
			case   sPlayerupidol:
				sprite_index = sPlayerupdash;
				image_index = 0;
				break;
			case sPlayerright:
				sprite_index =sPlayerrightdash;
				image_index = 0;
				break;	
			case sPlayerrightidol:
				sprite_index = sPlayerrightdash;
				image_index = 0;
				break;	
			case sPlayerleft :
				sprite_index = sPlayerleftdash;
				image_index = 0;
				break;		
			case sPlayerleftidol:
				sprite_index = sPlayerleftdash;
				image_index = 0;
				break;
				}
				
	

	if (dashDistance < 10){
		switch (sprite_index){
			case sPlayerdowndash:
				show_debug_message("in loop");
				y+=8;
				show_debug_message(dashDistance);
				dashDistance +=1
				
				break;
			case sPlayerupdash:
				y-=8;
				dashDistance +=1
				break;
			case sPlayerleftdash:
				x-=8;
				dashDistance +=1
				break;
			case sPlayerrightdash:
				x+=8;
				dashDistance +=1
				break;				
	
		}}
	if (dashDistance >= 10){
		switch (sprite_index){
			case sPlayerdowndash:
				sprite_index = sPlayerdownidol;
				objPlayer.dashDistance = 0;
				state = PLAYERSTATE.FREE;
				break;
			case sPlayerupdash:
				sprite_index = sPlayerupidol;
				objPlayer.dashDistance = 0;
				state = PLAYERSTATE.FREE;
				break;
			case sPlayerleftdash:
				sprite_index = sPlayerleftidol;
				objPlayer.dashDistance = 0;
				state = PLAYERSTATE.FREE;
				break;
			case sPlayerrightdash:
				sprite_index = sPlayerrightidol;
				objPlayer.dashDistance = 0;
				state = PLAYERSTATE.FREE;
				break;	}
	}
		
}