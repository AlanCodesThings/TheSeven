function Enemy_Dead(){
	speed = 0;
	flash = 0;
	sprite_index = deadSprite;
	
	if(!expDropped){
		objPlayer.experience += experience
		expDropped = true;
	}
	
	//if on later/last frame
	if (floor(image_index) == 7)
	{
		
		//argument 0 = odds of any coins dropping from enemy in 1/argument0 format (higher number = worse odds)
		if(irandom_range(1,argument0) = argument0){
			//argument 1 = maximum number of coins which can be dropped
			var coinNumb = irandom_range(1,argument1); //checks how many coins to drop
			for(var i =0; i < coinNumb; i++){
				//For every coin that is dropped, randomise the location to drop it a little
				var xlocation = irandom(20);
				var ylocation = irandom(20);
				//Call a script to check that there is no collision with a wall tile
				var result = Check_Tile_Collision(x,y,xlocation,ylocation,objPlayer.tilemap);
				//Create the coin using the result from the script
				instance_create_layer(x + result[0],y + result[1],"Instances",objCoin);
			}
		}
		//destroy the enemy
		instance_destroy();	
	}
	
}