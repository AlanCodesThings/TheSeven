// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossOneSlash(){
	
	if(sprite_index == attackSprite)
	{
		if(image_index >= 13){
			if(!instance_exists(objBossOneSlashhb) && !objBoss.checkToggle){
				//objBoss.checkToggle = true;
				instance_create_layer(x,y,"Objects", objBossOneSlashhb)
				objBoss.checkToggle = true;
				show_debug_message(objBossOneSlashhb.image_xscale)
			}
			with(objBossOneSlashhb)
				{
					image_xscale = objBoss.image_xscale;
					BossAbilityHit(objBoss);
				}
		}
	}
	if(xdifference <= 200 && ydifference <= 200)
	{
				path_end();
				sprite_index = attackSprite;	
				
	}
	
}