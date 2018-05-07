/*iflobal.canAttack=true)*/
{
	//Take faceDirection, create object oBullet on the next grid from the oPlayer
	if (faceDirection = 0)
	{
		//Attack right
		instance_create_layer(x+80,y,"Bullets",oBullet); 
		sprite_index = spPlayer_attack_right;
		image_speed = 0.7
	}
	
	if (faceDirection = 1)
	{
		//Attack up
		instance_create_layer(x,y-80,"Bullets",oBullet);
		sprite_index = spPlayer_attack_up;
	}
	
	if (faceDirection = 2) 
	{
		//Attack left
		instance_create_layer(x-80,y,"Bullets",oBullet);	
		sprite_index = spPlayer_attack_left;
	}
	
	
	if (faceDirection = 3)
	{
		//Attack down
		instance_create_layer(x,y+80,"Bullets",oBullet);
		sprite_index = spPlayer_attack_down;
	}	
}

//Create object AttackTimer, which calculates if you're able to attack or not 

if (global.canAttack = true)
{

	state = states.idle
}
