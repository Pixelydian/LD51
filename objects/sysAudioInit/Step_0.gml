screenAlpha = max(0,screenAlpha-0.02)

if HTML = 1
{
	if clicked == true and audio_system_is_available()
	{
		show_debug_message("HTML 1: sysAudio Initialized")
		RoomTransition(TRANS_TYPE.FADE,rLevel1);
		instance_destroy();	
	}
}
else
{
	RoomTransition(TRANS_TYPE.FADE,rLevel1);
	show_debug_message("HTML 0: sysAudio Initialized")
	instance_destroy();	
}


show_debug_message("sysAudio unavailable")

if drawText < 1 and mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
	{
		drawText = 0;
	}

if collision_circle(mouse_x,mouse_y,4,oClickable,true,true) exit;

if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
	{
		drawText = 1;
	}

