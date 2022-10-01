
image_index = humansCurrent;


if complete = true
{
	//Draw initial thin line
	if y2 >= 0 
	{
		y2 -= spd
		draw_line(x1,y1,x1,y2)
	}
	else	//Spread line
	{
			if x2 >= leftX x2--
			if x3 <= rightX x3++
			//FADE IN AND OUT
			draw_set_alpha(abs(sin(get_timer() * 0.000002 + pi))+0.5)
			
			draw_line(x2,y1,x2,y2)	//LEFT LINE
			draw_line(x3,y1,x3,y2)	//RIGHT LINE
			var _w = x3-x2-1,
				_h = (y2-y1)*-1
			
			draw_sprite_stretched(sBeam,0,x2+1,y2,_w,_h)
			whiteLight = max(0,whiteLight-0.01)
			if whiteLight > 0 
			{
				draw_sprite_stretched_ext(sPixel,0,x2+1,y2,_w,_h,c_white,whiteLight)
			}
			draw_set_alpha(1);
	}	
}


//DEBUG
if keyboard_check_pressed(ord("T")) 
{
	if !audio_is_playing(sfx_armShield) audio_play_sound(sfx_armShield,800,false)
	armed = true
}


draw_self();





