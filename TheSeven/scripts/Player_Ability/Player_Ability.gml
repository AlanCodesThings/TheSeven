// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Ability(){
show_debug_message("ABILITY");
image_index = 0;
sprite_index = sAbilityGetsuga;

instance_create_layer(x,y,"Objects", objGetsuga);
}