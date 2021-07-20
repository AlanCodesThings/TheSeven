/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y, objPlayer)){
	instance_destroy();
	
	//Increase count
	
	var itemPos = item_pos(itemType);
	if (itemPos == -1){
		ds_list_add(global.playerInventory, [itemType, 1]);
	}
	else {
		var arr = global.playerInventory[| itemPos];
		arr[@ 1]++;
	}
}