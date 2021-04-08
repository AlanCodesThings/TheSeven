/// @description Insert description here
// You can write your code in this editor


//Check for keyboard input and set direction

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Move the player based on keyboard input and check for collisions

if(hInput != 0 || vInput != 0){
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(speedWalk,dir);
moveY = lengthdir_y(speedWalk,dir);

if(hInput == 1 && place_free(x + checkWalk, y)){
	x += moveX * speedWalk;
}
if(hInput == -1 && place_free(x - checkWalk, y)){
	x += moveX * speedWalk;
}
if(vInput == 1 && place_free(x, y + checkWalk)){
	y += moveY * speedWalk;
}
if(vInput == -1 && place_free(x, y - checkWalk)){
	y += moveY * speedWalk;
}


}

