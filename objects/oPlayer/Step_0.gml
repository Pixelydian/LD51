if !audio_is_playing(sfx_MainTheme) audio_play_sound(sfx_MainTheme,500,true,0.50);

script_execute(state)



//DEBUG
/*
if keyboard_check_pressed(ord("M")) 
{
	if !audio_is_playing(sfx_PlayerDeath) audio_play_sound(sfx_PlayerDeath,800,false)
	state = playerStateDefeat
	screenShake(10,120)
}
