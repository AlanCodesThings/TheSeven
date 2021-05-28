/// @description Draw damage numbers
switch (enemyhitBy)
{
	case "auto":
		draw_text_ext_transformed_color(x+1,y+1, damage, 5,500,size,size,0,c_black,c_black,c_black,c_black, 1);
		draw_text_ext_transformed_color(x,y, damage, 5,500,size,size,0,3033318,3033318,1815796,1815796, 1);
		break;
	case "getsuga":
		draw_text_ext_transformed_color(x+1,y+1, damage, 5,500,size,size,0,c_black,c_black,c_black,c_black, 1);
		draw_text_ext_transformed_color(x,y, damage, 5,500,size,size,0,000080,000080,000080,000080, 1);
		break;
		}