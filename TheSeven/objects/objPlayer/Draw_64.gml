/// @description Insert description here
// You can write your code in this editor
for (var i =0; i<ds_list_size(global.playerInventory); i++){
	var arr = global.playerInventory[| i];
	
	var item = arr[0];
	var count = arr[1];
	
	draw_sprite(itemSprite[item], 0, 16, 64 + 20*i);
	draw_text(32,64 + 20*i, count);
}