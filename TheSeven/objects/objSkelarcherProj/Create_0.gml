/// @description Initialise arrow properties
arrowAngle = point_direction(x,y,objPlayer.x, objPlayer.y);
image_angle = point_direction(x,y,objPlayer.x, objPlayer.y);
speed = 2;
direction = arrowAngle;
canhit = true;
distTrav = 0;
damage = irandom_range(4,6) ;