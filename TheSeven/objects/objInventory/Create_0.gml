/// @description Insert description here
// You can write your code in this editor
inventorypOpen = false; 
selected = 0;
selectedAnim = 0;

ds_list_add(global.playerInventory, ["health","Quenches thirst"]);
ds_list_add(global.playerInventory, ["mana","It really do be like that"]);

itemCount = ds_list_size(items);