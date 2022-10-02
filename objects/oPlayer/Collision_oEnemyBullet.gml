HP--;

if HP <= 0
{
	if !audio_is_playing(sfx_PlayerDeath) audio_play_sound(sfx_PlayerDeath,800,false)
	instance_create_layer(x,y,"Instances",oExplosion2);
	state = playerStateDefeat
	screenShake(10,120)	
}



