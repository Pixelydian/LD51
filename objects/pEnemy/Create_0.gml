image_blend = c_red;
direction = point_direction(x,y,oPlayer.x,oPlayer.y)
facing = direction;
localFrame = 0;
accel = 0.01;
maxSpeed = 0.5;
HP = 5;

//PATROL VARS
xTo = x;
yTo = y;
timePassed = 0;	//Enemy wander timer
patrolDistance = 64;	//Distance an enemy will wander
//state = enemyStatePatrol;

//CHASE/ATTACK VARS
radiusChase = 128;	//Distance enemy will begin to chase player
radiusAttack = 64;	//Distance enemy will shoot at player
aggroCheckCur = 0;	//Aggro current timer
aggroCheckMax = 5;  //Aggro timer length/max
bulletCooldown = 0;
bulletCooldownMax = 30;









