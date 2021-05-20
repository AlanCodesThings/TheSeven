// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_Game(){
	with(objPlayer) instance_destroy();
	
	var _buffer = buffer_load( "savedgame.save");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
		
	var _loadData = json_parse(_string);
	while(array_length(_loadData) > 0)
	{
		var _loadEntity = array_pop(_loadData);
		with(instance_create_layer(375,500,"Entities", objPlayer))
		{
			maxHitpoints = _loadEntity.maxHitpoints;
			maxMana = _loadEntity.maxMana;
			maxLevel = _loadEntity.maxLevel;
			coinCount = _loadEntity.coinCount;
		}
	}
	
}	