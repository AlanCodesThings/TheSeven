/// @description Draw onto gui
//See objHealthBar for details
draw_self();
var _h = objPlayer.manaPercent * sprite_height;
var _yOffset = sprite_height - _h;
var _y = y + _yOffset;

draw_sprite_part(sprManaFull,0,0,_yOffset,sprite_width,_h,x,_y);
