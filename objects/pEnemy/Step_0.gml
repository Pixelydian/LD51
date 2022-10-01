
script_execute(state)

show_debug_message("ENEMY X: "+string(x))
show_debug_message("ENEMY Y: "+string(y))


/*

//mp_potential_step_object(oPlayer.x,oPlayer.y,0.5,oWall);

facing = point_direction(x,y,oPlayer.x,oPlayer.y);


//Check for walls directly in front
for (var _i = 0; _i < lookAhead; _i++){
	var _x = lengthdir_x(_i,direction),
	_y = lengthdir_y(_i,direction);
	
	if position_meeting(x+_x,y+_y,oWall) 
	{
		facing = direction-180;
		_i = lookAhead;
	}
}

for (var _i = 0; _i < lookAhead; _i++){
	var _x = lengthdir_x(_i,direction-22),
	_y = lengthdir_y(_i,direction-22);
	
	if position_meeting(x+_x,y+_y,oWall) 
	{
		facing = direction+22;
		_i = lookAhead;
	}
}

for (var _i = 0; _i < lookAhead; _i++){
	var _x = lengthdir_x(_i,direction+22),
	_y = lengthdir_y(_i,direction+22);
	
	if position_meeting(x+_x,y+_y,oWall) 
	{
		facing = direction-22;
		_i = lookAhead;
	}
}


if position_meeting(x+_x,y+_y,oWall) facing = direction-180;


motion_add(facing,accel)

if speed > maxSpeed speed = maxSpeed;


//show_debug_message("Wayfinder x: "+string(x))
//show_debug_message("Wayfinder y: "+string(y))


*/

playerAnimateSprite();