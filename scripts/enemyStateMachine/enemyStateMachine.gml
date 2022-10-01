function enemyStateScout(){

}


//Enemy is patrolling his initial area
function enemyStatePatrol(){
	
	if x == xTo && y == yTo || (timePassed > patrolDistance/maxSpeed)
	{
		var _dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);		//Set direction to face
		xTo = x + lengthdir_x(patrolDistance, _dir);		//set coordinates based on that direction
		yTo = y + lengthdir_y(patrolDistance, _dir);
		timePassed = 0;
	}

	facing = point_direction(x,y,xTo,yTo);
	
	motion_add(facing,accel)
	if speed > maxSpeed speed = maxSpeed;
	timePassed++
	
	//CHECK IF PLAYER IS WITHIN ATTACK RADIUS
	if (aggroCheckCur++ >= aggroCheckMax)
	{
		if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= radiusChase)
		{
			state = enemyStateChase
			aggroCheckCur = 0; //Reset timer
			show_debug_message("ENEMY BEGINS CHASE")
		}
	}	
}


function enemyStateChase(){
	
	//CHECK IF CAN ATTACK PLAYER
	if (bulletCooldown++ >= bulletCooldownMax)
	{
		if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= radiusAttack)
		{
			instance_create_layer(x,y,"Instances",oEnemyBullet,{direction: facing});	
			bulletCooldown = 0;	//Reset bullet timer
			show_debug_message("ENEMY ATTACKS")
		}
	}
	
	//CHECK IF PLAYER IS STILL WITHIN ATTACK RADIUS
	if (aggroCheckCur++ >= aggroCheckMax)
	{
		if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) >= radiusChase)
		{
			state = enemyStatePatrol
			xTo = x;
			yTo = y;
			aggroCheckCur = 0; //Reset timer
			show_debug_message("ENEMY RETURNS TO PATROL")
		}
	}
	
	if instance_exists(oPlayer) facing = point_direction(x,y,oPlayer.x,oPlayer.y);
	
	playerAnimateSprite();
	
	//Chase player
	motion_add(facing,accel);
	
}



function enemyTakeDamageFighter(){
	
}

function enemyTakeDamageScout(){
	
}

