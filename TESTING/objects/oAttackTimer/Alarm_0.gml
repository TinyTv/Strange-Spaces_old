//Destroy the bullet
instance_destroy(oBullet);

global.canAttack = true;
global.state = states.idle;

instance_destroy(oAttackTimer);