//Player Movement right
if (isMoving == false)
{
	if (keyboard_check(vk_right))
	{
		isMoving = true;
		moveTimer = gridSize;
		hsp = moveSpeed;
		vsp = 0;
	}
}

if (isMoving == true)
{ 
	x += hsp;
	y += vsp;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) isMoving = false;
}


//Player movement left
if (isMoving == false)
{
	if (keyboard_check(vk_left))
	{
		isMoving = true;
		moveTimer = gridSize;
		hsp = -moveSpeed;
		vsp = 0;
	}
}

if (isMoving == true)
{ 
	x += hsp;
	y += vsp;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) isMoving = false;
}

//Player movement up/down
if (keyboard_check(vk_up))
{
	isMoving = true;
	moveTimer = gridSize;
	hsp = 0;
	vsp = -moveSpeed;
}

if (keyboard_check(vk_down))
{ 
	isMoving = true;
	moveTimer = gridSize;
	hsp = 0;
	vsp = moveSpeed;
}

if(isMoving == true)
{ 
	x += hsp;
	y += vsp;
	
	moveTimer -= moveSpeed;
	if (moveTimer == 0) isMoving = false;
}