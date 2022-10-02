
HP--
 instance_destroy(other);	//Destroy bullet
 
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
	
	with oGui
	{
		boxSections--;
		timerScale = 2;
		global.masterTimer += seconds(10);
	}
	var _roll = random(100)
	if _roll > 50 instance_create_layer(x,y,"Instances",oHealth)
	instance_create_layer(x,y,"Instances",oExplosion)
	audio_play_sound(sfx_smallExplosion,600,false,1,0,0.8)
	screenShake(5,30);
	instance_destroy();
}




