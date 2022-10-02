if point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom)
{
	image_blend = c_red
	if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
	{
		if isTrigger == true and instance_exists(sysAudioInit)
		{
			with sysAudioInit clicked = true
			if !audio_is_playing(sfx_meow) audio_play_sound(sfx_meow,800,false);
			exit;
		}
		else drawText = 1
	}			
}
else image_blend = c_white

if drawText < 1 and mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
	{
		drawText = 0;
	}
	

	
	

	



