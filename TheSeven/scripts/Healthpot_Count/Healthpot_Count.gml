// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Healthpot_Count(){
	var tempCount = 0;
	for (i=0; i < ds_list_size(objPlayer.playerInventory); i += 1){
		if (ds_list_find_value(objPlayer.playerInventory, i) == objHealthpot){
			tempCount +=1;	
		}
	}
	objPlayer.healthPots = tempCount;
}