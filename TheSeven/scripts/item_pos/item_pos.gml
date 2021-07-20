// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_pos(){
	for (var i=0; i < ds_list_size(global.playerInventory); i++){
		var arr = global.playerInventory[| i];
		
		if (arr[0] == argument[0]){
			return i;	
		}	
}

return -1;
}