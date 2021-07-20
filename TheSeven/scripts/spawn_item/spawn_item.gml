// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_item(){
var _x = argument[0];
var _y = argument[1];
var _item = argument[2];

//spawn
var inst = instance_create_layer(_x,_y, "Instances", oItem);
inst.itemType = _item;

//Sprite
inst.sprite_index = objPlayer.itemSprite[_item];
}