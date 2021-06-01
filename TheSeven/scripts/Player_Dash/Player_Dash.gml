function Player_Dash()
{
		//Change sprite depending on current player sprite (direction player is facing)
		switch (sprite_index)
		{
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
				
	
	//move player depending on direction
	if (dashDistance < 10)
	{
		switch (sprite_index)
		{
			case sPlayerdowndash:
				
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
	
		}
	}
	//change player to idol after dash is complete
	if (dashDistance >= 10)
	{
		switch (sprite_index)
		{
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
				break;
		}
	}	
}