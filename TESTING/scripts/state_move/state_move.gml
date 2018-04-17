if(hsp!=0)
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

else state = states.idle;