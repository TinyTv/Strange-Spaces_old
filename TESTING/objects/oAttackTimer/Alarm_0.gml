//Destroy the bullet
instance_destroy(oBullet);

global.canAttack = true;
state = states.idle;

instance_destroy(oAttackTimer);