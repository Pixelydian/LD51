if keyboard_check_pressed(vk_escape) 
{
	if audio_is_playing audio_stop_sound(sfx_MainTheme)
	game_end();
}


