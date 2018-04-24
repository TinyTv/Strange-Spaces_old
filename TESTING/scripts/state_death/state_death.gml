//Stop movement
hsp = 0;
vsp= 0;

//Initiate death animation



//Hide oPlayer
visible = false;



//Move oPlayer to spawnpoint/checkpoint

//Snaps the oTest and oPlayer to oSpawn
x = round(oSpawn.x / oSpawn.gridSize) * oSpawn.gridSize;
y = round(oSpawn.y / oSpawn.gridSize) * oSpawn.gridSize;

// 2~ second delay is borke, ples fex
alarm[0] = room_speed * 10;


//Show oPlayer
visible = true;


//Change state to idle 
state = states.idle;