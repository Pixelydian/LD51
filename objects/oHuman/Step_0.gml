
//If player is landing nearby
if (instance_exists(oPlayer)) && oPlayer.state = playerStateGrounded
{
		sprite_index = sHumanWalk
		if oPlayer.x > x 
		{
			if place_meeting(x+spd,y,oWall) exit;
			if place_meeting(x+spd,y,oWall2) exit;
			x+=spd
			image_xscale = 1;
		}
		if oPlayer.x < x 
		{
			if place_meeting(x-spd,y,oWall) exit;
			if place_meeting(x-spd,y,oWall2) exit;
			x-=spd
			image_xscale = 1;
		}
	}
	
	
else sprite_index = sHumanIdle



