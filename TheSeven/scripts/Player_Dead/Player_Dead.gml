function Player_Dead(){
	//Change to dead sprite
	sprite_index = sPlayerDead;
	//move player a bit
	if (image_index <= 5)
	{
		y+=0.2;
	}
	if( image_index >= 10)
	{
		//set player to dead
		global.playerDead = true;
	}
}