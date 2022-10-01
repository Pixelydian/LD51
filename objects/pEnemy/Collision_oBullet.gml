
HP--

with oGui
	{
		boxSections--;
		timerScale = 2;
		global.masterTimer += seconds(10);
	}
	
	
 instance_destroy(other);
 
if HP <= 0
{
	if instance_exists(oPlayer) 
	{
		with oPlayer 
		{
			tenEvent = true
			x1 = other.x;
			y1 = other.y;
		}
	}
	instance_destroy();
}




