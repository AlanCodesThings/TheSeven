// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword_HB(){

	
	ds_list_clear(hitByAttack);
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,objEnemy, hitByAttackNow, false);
	
	//show_debug_message(ds_list_size(hitByAttackNow));
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			
			//if this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i]; //this is the same as ds_list_find_value(hitByAttackNow, i);
			if (ds_list_find_index(hitByAttack,hitID) == -1)
			{
				
				ds_list_add(hitByAttack, hitID);
				//Weapon_Sword_Hit(hitID);	
				
				with(hitID){
					if(Weapon_Sword_Hit(hitID) == -1)exit;
					ds_list_delete(hitByAttackNow,hitID);
				}

			}
		}
		
	}
ds_list_destroy(hitByAttackNow);

}