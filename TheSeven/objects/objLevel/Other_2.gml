/// @description Insert description here
// You can write your code in this editor
display_set_gui_maximise(1,1);
if(room == Camp){
	if(file_exists("savedgame.save")){	
	Load_Game();	
	show_debug_message("Game Loaded")
	}else{
		show_debug_message("No Save Game, Creating new Player")
		instance_create_layer(375,500,"Entities", objPlayer);	
	}
}