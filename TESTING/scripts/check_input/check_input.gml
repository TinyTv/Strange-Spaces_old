//Player Movement right

if (state != states.move)
	{

	if (keyboard_check_pressed(vk_right)) 
	{
		
		hsp = gridSize;
		vsp = 0;
	}


	//Player movement left
		if (keyboard_check_pressed(vk_left))
	{
		hsp = -gridSize;
		vsp = 0;
	}


	//Player movement up/down
	if (keyboard_check_pressed(vk_up))
	{

		hsp = 0;
		vsp = -gridSize;
	}

	if (keyboard_check_pressed(vk_down))
	{ 
	
		hsp = 0;
		vsp = gridSize;
	}

	if (vsp !=0 or hsp !=0)
	{
		state = states.move;
	}
	else 
	{
		state = states.idle;	
	}
}