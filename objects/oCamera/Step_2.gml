if view_enabled = true
{

if HTML == 0
	{
		// set camera window size 
		camera_set_view_size(view,view_width,view_height);
	}

//CENTER ON PLAYER
if (instance_exists(oPlayer))
{
	var _x = clamp(oPlayer.x - view_width*0.5,0,room_width-view_width); // Coordinants stay within room
	var _y = clamp(oPlayer.y - view_height*0.5,0,room_height-view_height);
	
	//current coordinant of camera
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	//set speed camera moves
	var _spd = 1;

//SCREENSHAKE

//Move camera's x and y a random range left and right/up and down over time
_x+= random_range(-shakeRemain,shakeRemain);
_y+= random_range(-shakeRemain,shakeRemain);

//The percentage that ShakeRemain must lower each frame in order to get to zero over a set frame amount.
var _shakeReduction = (shakeMag/shakeLen)

//Remaining shake heads towards zero each frame
shakeRemain = max(0, shakeRemain - (_shakeReduction))

// Camera centers on player, and moves towards at gradual speed (percentage over time)
camera_set_view_pos(view,lerp(_cur_x,_x,_spd),lerp(_cur_y,_y,_spd))	
}

}	//END IF VIEW ENABLED

//IF ON MENU

/*
if (instance_exists(oMenu))
{
	camera_set_view_pos (view,0,0)
}
}





