gridSize = 80;
moveSpeed = 8;
dashDistance = 2; //dash moves the object 2 units (grids)
dashSpeed = 40; 

//Can attack, other instances can change this
global.canAttack = true;

//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;

depth = -2

<<<<<<< HEAD
playerHealth = 1;

=======

playerHealth = 1
>>>>>>> parent of 48ff421... Merge pull request #15 from TinyTv/devEsa

hsp = 0;
vsp = 0;
moveDirection = 0 //oPlayer has moved this direction
faceDirection = 0 //oPlayer is "facing" this direction

enum states
{
	idle,
	move,
	dash,
	death,
	attack,
}

state = states.idle;

