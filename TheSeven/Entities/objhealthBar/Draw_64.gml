/// @description Insert description here
// You can write your code in this editor
draw_self();
var _h = objPlayer.hpPercent * sprite_height;
var _yOffset = sprite_height - _h;
var _y = y + _yOffset;

draw_sprite_part(sprHealthFull,0,0,_yOffset,sprite_width,_h,x,_y);