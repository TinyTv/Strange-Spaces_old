//Idle animations
// Change sprite based on what direction we're facing
if (moveDirection = 2) 
{
	sprite_index = spPlayer_idle_left;		
}
	
if (moveDirection = 0)
{
	sprite_index = spPlayer_idle_right;		
}
	
if (moveDirection = 1)
{
	sprite_index = spPlayer_idle_up;
		
}
	
if (moveDirection = 3)
{
	sprite_index = spPlayer_idle_down;
}


if (global.state = states.idle)
	{
		//Collision with oHazard block kills the player 
	if (place_meeting(oTest.x + sign(hsp), oTest.y + sign(vsp),oHazard))
		{
		global.state = states.death;
		state_death()
	
		}
						
		else global.state = states.idle;
				
}
