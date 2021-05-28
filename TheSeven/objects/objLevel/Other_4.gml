/// @description Reset player values-camp
if(room == Camp){
	if(instance_exists(objPlayer)){
		objPlayer.coinCount = 0;
		if(objPlayer.level > objPlayer.maxLevel){
			objPlayer.maxLevel = objPlayer.level;
		}
		objPlayer.level = 0;
		objPlayer.hitpoints = objPlayer.maxHitpoints;
		objPlayer.x = 375;
		objPlayer.y = 500;
	}
}
