gridSize = 80;
moveSpeed = 8;

//Snappaa oPlayerin gridiin
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

hsp = 0;
vsp = 0;

enum states
{
	idle,
	move,
	dash,
}

state = states.idle;



