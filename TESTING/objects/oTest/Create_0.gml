gridSize = 80;


state = states.idle;

//Snaps oPlayer to grid
x = round(x / gridSize) * gridSize;
y = round(y / gridSize) * gridSize;