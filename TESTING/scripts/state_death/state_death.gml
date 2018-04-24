//Stop movement
hsp = 0;
vsp= 0;

//Destroy player and hitbox
instance_destroy(oPlayer);
instance_destroy(oTest);

/*//Snaps the oTest and oPlayer to oSpawn
x = round(oSpawn.x / oSpawn.gridSize) * oSpawn.gridSize;
y = round(oSpawn.y / oSpawn.gridSize) * oSpawn.gridSize;*/


//Change state to idle 
state = states.idle;

instance_create_depth(0,0,5,oSpawnTimer);