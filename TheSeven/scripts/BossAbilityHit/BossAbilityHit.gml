// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossAbilityHit(){
	enemy = argument0
	
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,objPlayer, hitByAttackNow, false);
	
	if(hits > 0){
			// Initialise variables to store IDs
			var	currentenemyHit = undefined;
			var currenenemytHitID = undefined;
	
			//Create a damage number object and store its ID 
			if(!enemy.hitPlayer)
			{
				if (objPlayer.hitpoints > 0){
					currentenemyHit = instance_create_layer(objPlayer.x + irandom_range(-5,5), objPlayer.y + irandom_range(-5,5), "Objects", objPlayerhit)
					currenenemytHitID = currentenemyHit.id;
				}
	
					//If there is a damage number object from the above hit
				if (currenenemytHitID != undefined)
				{
					if (currentenemyHit.dmgnumberReset == true)
					{
						currentenemyHit.damage = enemy.damage;
					}
				}
				objPlayer.hitpoints -= enemy.damage;
				enemy.hitPlayer = true;
			}
	}
}