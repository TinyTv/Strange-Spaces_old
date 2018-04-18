//Player Movement right

if (state != states.move and state != states.dash)
	{

	if (keyboard_check_pressed(vk_right)) 
	{
		moveDirection = 0;
		hsp = gridSize;
		vsp = 0;
	}


	//Player movement left
		if (keyboard_check_pressed(vk_left))
	{
		moveDirection = 2;
		hsp = -gridSize;
		vsp = 0;
	}


	//Player movement up/down
	if (keyboard_check_pressed(vk_up))
	{
		moveDirection = 1;
		hsp = 0;
		vsp = -gridSize;
	}

	if (keyboard_check_pressed(vk_down))
	{ 
		moveDirection = 3;
		hsp = 0;
		vsp = gridSize;
	}
	
	if (keyboard_check_pressed(vk_shift))
	{ 
		var tempDashDistance = dashDistance;
		
		//Ottaa moveDirectionista määritetyn suunnan ja menee sinne päin.
		hsp = lengthdir_x(dashDistance * gridSize, moveDirection * 90);
		vsp = lengthdir_y(dashDistance * gridSize, moveDirection * 90);
		state = states.dash;
		var i = 0;
		
		for(var i = 0;i<dashDistance; i++)//i on pienempi kuin dashDistance = lisää iihin yks.
		{
			if (place_meeting(oTest.x + sign(hsp) + sign(hsp)*(i*gridSize), oTest.y + sign(vsp) + sign(vsp)*(i*gridSize), oWall))
				{
					tempDashDistance = i;
				}
		}
		
		hsp = lengthdir_x(tempDashDistance * gridSize, moveDirection * 90);
		vsp = lengthdir_y(tempDashDistance * gridSize, moveDirection * 90);
		
		return;
		
	}
		
	if (vsp !=0 or hsp !=0)//Liikkuuko/liikutaanko?
	{
			//Collision 
	if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWall))
			{
				state = states.idle;
				hsp = 0;
				vsp = 0; 
			}
				else state = states.move;
	}
	else 
	{
		state = states.idle;	
	}
}

