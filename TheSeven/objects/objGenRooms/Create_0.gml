/// @description Insert description here
// You can write your code in this editor

instance_create_layer(0,0,layer,objRoom)// create first room

rooms_generated = 0; //how many rooms are generated
genx = 0; //room x coordinate
geny = 0; //room y coordinate
gen = true; //true = enable generation

up = false; //set the direction of the next room
down = false;
left = false;
right = false;
