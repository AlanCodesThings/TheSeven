function Load_Game(){
	//with(objPlayer) instance_destroy();
	
	//create a buffer of the save file, read it and store it in a string, then delete the buffer
	var _buffer = buffer_load( "savedgame.save");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	//parse the string into a json structure
	var _loadData = json_parse(_string);

	//For each json object stored, pop it and create an object (player) using the variables read from the file
	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		with(instance_create_layer(375,500,"Entities", objPlayer))
		{
			maxHitpoints = _loadEntity.maxHitpoints;
			maxMana = _loadEntity.maxMana;
			maxLevel = _loadEntity.maxLevel;
			storedCoins = _loadEntity.storedCoins;
		}
	}

}	