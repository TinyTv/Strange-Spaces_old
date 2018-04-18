if(hsp!=0) //If hsp is NOT 0, check some things to figure out if we're moving:
{
	if ((abs(hsp) - moveSpeed) <= 0)
	{
		x += hsp;	
		hsp = 0;
	}
	
	else
	{
	x += sign(hsp) * moveSpeed;
	hsp -= sign(hsp) * moveSpeed;
	}
}

//If we're not moving horizontally (checked above^) check if vsp is NOT 0 = do some checks:: 
else if(vsp!=0) 
{
	
	if ((abs(vsp) - moveSpeed) <= 0)
	{
		y += vsp;	
		vsp = 0;
	}
	
	else
	{
	y += sign(vsp) * moveSpeed;
	vsp -= sign(vsp) * moveSpeed;
	}
}
//If hsp or vsp is 0 = we're not moving in either direction, switch state to idle 
else state = states.idle;