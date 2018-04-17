gridSize = 80;
moveSpeed = 8;
dashDistance = 2; //dash siirtyy kaksi solua
dashSpeed = 40; 



//Snappaa oPlayerin gridiin
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

hsp = 0;
vsp = 0;
moveDirection = 0 //pelaajan "katsomissuunta"

enum states
{
	idle,
	move,
	dash,
}

state = states.idle;



