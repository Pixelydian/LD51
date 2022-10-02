

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






