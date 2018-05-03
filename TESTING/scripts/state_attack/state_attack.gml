if(global.canAttack = true) //Create bullet only if canAttack = true
{
	bullet = instance_create_depth(x,y,-1,oBullet);
	bullet = oBullet;
	bullet.speed = 2.5; /*This is currently the "distance" oBullet travels, and it is dependant on framerate
	Fix oBullet to move one grid, not depndant on speed. */
}

//THERE ISCURRENTLY A BUG = oBullet collides it breaks everything

/*
bullet = instance_create_depth(x,y,-1,oBullet);
	bullet = oBullet;
	bullet.speed = 2.5; /*This is currently the "distance" oBullet travels, and it is dependant on framerate
	Fix oBullet to move one grid, not depndant on speed. */

if (moveDirection = 2) 
{
	sprite_index = spPlayer_attack_left;	
	bullet.direction = 180;
}
	
if (moveDirection = 0)
{
	sprite_index = spPlayer_attack_right;		
	bullet.direction = 0;
}
	
if (moveDirection = 1)
{
	sprite_index = spPlayer_attack_up;
	bullet.direction = 90;
}
	
if (moveDirection = 3)
{
	sprite_index = spPlayer_attack_down;
	bullet.direction = 270;
}  


//Create object AttackTimer, which calculates if you're able to attack or not (delayed attacking)
instance_create_depth(0,0,1,oAttackTimer);





