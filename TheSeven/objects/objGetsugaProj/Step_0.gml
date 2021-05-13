/// @description Insert description here
// You can write your code in this editor
if (dirCheck == "up"){
	image_yscale = -1;
	y = y - vsp;
	}
if (dirCheck == "down"){
	y = y + vsp;
	}
if (dirCheck == "left"){
	image_angle = 270;
	x = x - vsp;
	}
if (dirCheck == "right"){
	image_angle = 90;
	x = x + vsp;
	}
disTrav += 1;
if (disTrav > 20){
	instance_destroy();	
	if (instance_exists(objEnemy)){
	objEnemy.invulGetsuga = false;}
}






Weapon_Sword_HB();
