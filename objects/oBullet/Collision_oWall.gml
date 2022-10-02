instance_create_layer(x,y,"instances",oExplosion2)
if !audio_is_playing(sfx_smallExplosion) audio_play_sound(sfx_smallExplosion,500,false,0.5,0,choose(1.2,1.3))
instance_destroy();



