// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Dead(){
	speed = 0;
	flash = 0;
	sprite_index = deadSprite;
	if (floor(image_index) == 7)
	{
		
		
		if(irandom_range(1,argument0) = argument0){
			var coinNumb = irandom_range(1,argument1);
			for(var i =0; i < coinNumb; i++){
				var xlocation = irandom(20);
				var ylocation = irandom(20);
				var result = Check_Tile_Collision(x,y,xlocation,ylocation,objPlayer.tilemap);
				instance_create_layer(x + result[0],y + result[1],"Instances",objCoin);
			}
		}
		instance_destroy();	
	}
	
}