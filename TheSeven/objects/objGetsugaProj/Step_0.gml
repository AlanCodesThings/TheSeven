/// @description Move getsuga, call dmg script

//Move getsuga and change sprite angle depending on direction
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
	
//check distance travelled and destroy it after a set amount
disTrav += 1;
if (disTrav > 20){
	instance_destroy();	
	if (instance_exists(objEnemy)){
	objEnemy.invulGetsuga = false;}
}






Weapon_Sword_HB();
