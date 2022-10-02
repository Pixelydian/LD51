repeat (prisoners)
{
	var _x = irandom_range(-8,8)
	instance_create_layer(x+_x,y,"Instances",oHuman)
}


if instance_exists(oTutorial) oTutorial.prisonersReleased = true;
instance_create_layer(x,y,"Instances",oExplosion)
if !audio_is_playing(sfx_smallExplosion) audio_play_sound(sfx_smallExplosion,600,false,1,0,0.8)
instance_destroy();

