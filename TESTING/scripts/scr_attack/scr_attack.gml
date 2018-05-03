if(global.canAttack=true)
{
	//Take moveDirection, create object oBullet on the next grid from the oPlayer
	if (moveDirection = 2) 
	{
		instance_create_layer(x-80,y,"Bullets",oBullet);		
	}
	
	if (moveDirection = 0)
	{
		instance_create_layer(x+80,y,"Bullets",oBullet); 	
	}
	
	if (moveDirection = 1)
	{
		instance_create_layer(x,y-80,"Bullets",oBullet);
		
	}
	
	if (moveDirection = 3)
	{
		instance_create_layer(x,y+80,"Bullets",oBullet);
	}	
}

//Create object AttackTimer, which calculates if you're able to attack or not 
instance_create_depth(0,0,1,oAttackTimer);


