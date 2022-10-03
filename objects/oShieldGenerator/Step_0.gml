

if armed = true
{
	armedTimer++;
	if armedTimer >= armedTimerMax
	{
		complete = true;
		armed = false;
		screenShake(10,60)
		
		with oGame
		{
			shieldComplete(other.id,other.level);
		}
		
	}
}

//DEBUG AND JAM DEMONSTRATION
if keyboard_check_pressed(ord("N")) and !instance_exists(oTransition)
{
	with oGame shieldComplete(other.id,other.level)
}


