/// @description Load game/create player


display_set_gui_maximise(1,1);

//Load from save file if one exists, if not, create a new player
if(room == Camp){
	if(file_exists("savedgame.save")){	
	Load_Game();	
	show_debug_message("Game Loaded")
	}else{
		show_debug_message("No Save Game, Creating new Player")
		instance_create_layer(375,500,"Entities", objPlayer);	
	}
}