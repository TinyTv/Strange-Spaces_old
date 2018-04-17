//Collision 
if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWall))
{
	state = states.idle;
	hsp = 0;
	vsp = 0;
	return; 
}


if(hsp!=0)
{
	x += sign(hsp) * moveSpeed;
	hsp -= sign(hsp) * moveSpeed;;
}
else if(vsp!=0)
{
	y += sign(vsp) * moveSpeed;
	vsp -= sign(vsp) * moveSpeed;;
}
else state =states.idle;


