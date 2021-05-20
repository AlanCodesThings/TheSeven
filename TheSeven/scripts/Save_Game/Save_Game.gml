// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save_Game(){
	var _saveArray = array_create(0);
	with(objPlayer){
		//creating a struct of the player then push it to save array
		var _savePlayer = 
		{
			obj : object_index,
			maxHitpoints : maxHitpoints,
			maxMana : maxMana,
			coinCount : coinCount,
			maxLevel : maxLevel,
		}
		array_push(_saveArray, _savePlayer);
	}
	//turn data into a json string and save via a buffer (packet of memory)
	var _string = json_stringify(_saveArray);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedgame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game saved! " + _string);
}
