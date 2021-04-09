/// @description Insert description here
// You can write your code in this editor
randomize(); //makes it rng
if (gen == true)
{
	do
	{
		randRoom = irandom(3);
		rooms_generated++;
		if(rooms_generated >= 10)
		{
			gen = false;
		}
		if(randRoom == 0 && up == false)
		{
			up = false;
			down = true;
			left = false;
			right = false;
			instance_create_layer(genx + 512,geny,layer,objDoorTop);
			geny -= 768;
			instance_create_layer(genx,geny,layer,objRoom);
			instance_create_layer(genx+512,geny + 704,layer, objDoorBot);
		}
		if(randRoom ==1 && down == false)
		{
			up = true;
			down = false;
			left = false;
			right = false;
			
			instance_create_layer(genx + 512, geny +704, layer, objDoorBot);
			geny += 768
			instance_create_layer(genx, geny, layer, objRoom);
			instance_create_layer(genx +512, geny, layer, objDoorTop);
		}
		
		if(randRoom == 2 && right == false)
		{
			up = false;
			down = false;
			left = true;
			right = false;
			instance_create_layer(genx + 960,geny + 352,layer,objDoorRight);
			genx += 1024;
			instance_create_layer(genx,geny,layer, objRoom);
			instance_create_layer(genx,geny + 352,layer, objDoorLeft);
		}
		if(randRoom ==3 && left == false)
		{
			up = false;
			down = false;
			left = false;
			right = true;
			
			instance_create_layer(genx, geny +352, layer, objDoorLeft);
			genx -= 1024
			instance_create_layer(genx, geny, layer, objRoom);
		
			instance_create_layer(genx +960, geny + 352, layer, objDoorRight);
		}
	}
	until (rooms_generated >= 10)
}
mp_grid_add_instances(movementGrid,objRoom,1);