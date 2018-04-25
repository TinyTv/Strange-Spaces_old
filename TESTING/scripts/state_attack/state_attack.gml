
// Change sprite based on what direction we're facing
if (moveDirection = 2) 
{
	sprite_index = spPlayer_attack_left;		
}
	
if (moveDirection = 0)
{
	sprite_index = spPlayer_attack_right;		
}
	
if (moveDirection = 1)
{
	sprite_index = spPlayer_attack_up;
		
}
	
if (moveDirection = 3)
{
	sprite_index = spPlayer_attack_down;
}


//check moveDirection for collision with enemy objects
//If there's collision -> do 1 damage



	//Define x and y as player location (add 1 towards moveDirection?)
	x = round(oPlayer.x / oPlayer.gridSize) * oPlayer.gridSize;
	y = round(oPlayer.y / oPlayer.gridSize) * oPlayer.gridSize;

	//create object oBullet
	instance_create_depth(x+1,y,-1,oBullet);

	//Create object AttackTimer, which calculates if you're able to attack or not (delayed attacking)
	instance_create_depth(0,0,1,oAttackTimer);


	//Collision check for bullet meets enemy = dmg enemy - BASE, EDIT THIS!!
		if (place_meeting(oBullet.x + sign(hsp),oBullet.y + sign(vsp),oDmg1))
				{
					enemyHealth = enemyHealth - 1;
					
						if(enemyHealth <= 0)
						{
								instance_destroy(oDmg1);
						}
				}

//else instance_destroy(oBullet);
state = states.idle;