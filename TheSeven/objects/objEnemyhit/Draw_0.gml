/// @description Insert description here
// You can write your code in this editor
switch (enemyhitBy)
{
	case "auto":
		draw_text_ext_transformed_color(x+1,y+1, damage, 5,500,size,size,0,c_black,c_black,c_black,c_black, 1);
		draw_text_ext_transformed_color(x,y, damage, 5,500,size,size,0,3033318,3033318,1815796,1815796, 1);
		break;
	case "getsuga":
		draw_text_ext_transformed_color(x+1,y+1, damage, 5,500,size,size,0,c_black,c_black,c_black,c_black, 1);
		draw_text_ext_transformed_color(x,y, damage, 5,500,size,size,0,0139139,0139139,0255255,0255255, 1);
		break;
		}