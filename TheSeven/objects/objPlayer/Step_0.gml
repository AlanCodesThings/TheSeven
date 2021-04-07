/// @description Insert description here
// You can write your code in this editor


//Check for keyboard input and set direction
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up)|| keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down)|| keyboard_check(ord("S"));

//Move the player based on keyboard input and check for collisions
if(keyLeft == 1 && place_free(x - checkWalk, y)){
	x -= speedWalk	
}
if(keyRight == 1 && place_free(x + checkWalk, y)){
	x += speedWalk	
}
if(keyDown == 1 && place_free(x, y + checkWalk)){
	y += speedWalk	
}
if(keyUp == 1 && place_free(x, y - checkWalk)){
	y -= speedWalk	
}

/*

inputDirection = point_direction(0,0,keyRight- keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0)  || (keyDown - keyUp != 0);

//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;
*/