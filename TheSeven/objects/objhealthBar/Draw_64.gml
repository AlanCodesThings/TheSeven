/// @description Draw onto gui 
//THIS IS DRAWN IN OBJPLAYER

//draw the empty bar first then draw the full bar on top
draw_self();
var _h = objPlayer.hpPercent * sprite_height;
var _yOffset = sprite_height - _h;
var _y = y + _yOffset;

//Only draw part of the health bar depending on the player health %
draw_sprite_part(sprHealthFull,0,0,_yOffset,sprite_width,_h,x,_y);
