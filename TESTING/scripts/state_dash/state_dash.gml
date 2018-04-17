if(hsp!=0) //jos hsp ei ole nolla, toteuta:
{
	if ((abs(hsp) - dashSpeed) <= 0) //jos hsp muunnettuna on vähemmän tai yhtäpaljon kuin 0, toteuta:
	{
		x += hsp; //jäljelläolevan lasku	
		hsp = 0;
	}
	
	else
	{
	x += sign(hsp) * dashSpeed;
	hsp -= sign(hsp) * dashSpeed;
	}
}

else if(vsp!=0)
{
	
	if ((abs(vsp) - dashSpeed) <= 0)
	{
		y += vsp;	
		vsp = 0;
	}
	
	else
	{
	y += sign(vsp) * dashSpeed;
	vsp -= sign(vsp) * dashSpeed;
	}
}

else state = states.idle;
