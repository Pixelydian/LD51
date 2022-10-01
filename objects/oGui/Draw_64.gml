
for (var _i = 0; _i < humansMax; _i++)
{
	if _i < humansCurrent var _frame = 1;
	else var _frame = 0;
	draw_sprite(sHumanGui,_frame,humanX+(_i*padding),humanY);
}



if missionComplete
{
	if instance_exists(oTutorial) oTutorial.textCurrent = 10
	draw_set_alpha(0.5)
	draw_sprite_stretched(sPixel,1,0,0,global.res_w,global.res_h);
	drawSetText(c_white,tFont1,fa_center,fa_middle)	
	draw_set_alpha(1)
	draw_text(global.res_w*0.5,global.res_h*0.4,"MISSION COMPLETE")
	animationFrame += 0.1
	if animationFrame >= sprite_get_number(sHumanIdle) animationFrame = 0;
	draw_sprite(sHumanVictory,animationFrame,global.res_w*0.5,global.res_h*0.5)
}

if missionLost
{
	if instance_exists(oTutorial) oTutorial.textCurrent = 10
	draw_set_alpha(0.5)
	draw_sprite_stretched_ext(sPixel,0,0,0,global.res_w,global.res_h,c_red,0.3);
	drawSetText(c_white,tFont1,fa_center,fa_middle)	
	draw_set_alpha(1)
	draw_text(global.res_w*0.5,global.res_h*0.4,"MISSION LOST")
}





//DRAW TIMER
if boxSections > 0 and boxSections < boxSectionsMax
{
	for (var _i = 0; _i < boxSections; _i++){
		
	draw_sprite_stretched(sTimerSections,_i,x1,y1+(-8*_i),boxWidth,-8)
	draw_set_color(c_white)
	var _yy = y1+(-8*_i)
	draw_line(x1,_yy-8,x2-2,_yy-8)
	}
}

draw_sprite_stretched(sTimerBox,0,x1,y1,boxWidth,boxHeight)



drawSetText(c_white,tFont3,fa_center,fa_middle)

	var _time = global.masterTimer/60
	var _seconds = (_time mod 60);
	var _minutes = (_time-_seconds)/60
	_seconds = round_to(_seconds,1);
	

var _sec = string(_seconds),
	_min = string(_minutes);
if _sec == "60" 
{
	_sec = "00"
	_min = "1"
}

if global.masterTimer <= 0
	{
		missionLost = true;
		if defeatShake == false
		{
			screenShake(20,60)
			defeatShake = true;
		}
		_min = "0";
		_sec = "00"
	}

if string_length(_seconds) <= 1 and missionLost == false var _zero = "0"
else _zero = ""


draw_text_transformed(global.res_w-48,32,string(_min)+":"+string(_zero)+string(_sec),timerScale,timerScale,0)


if tenEvent = true
{
	tenAlpha = max(0,tenAlpha-0.01);
	float++
	draw_set_alpha(tenAlpha);
	drawSetText(c_white,tFont3,fa_center,fa_middle)
	draw_text(x1-float-1,y1-float-1,"-10")
	drawSetText(c_red,tFont3,fa_center,fa_middle)
	draw_text(x1-float,y1-float,"-10")
	draw_set_alpha(1);
	if tenAlpha <= 0 
	{
		tenEvent = false;
		tenAlpha = 1;
		float = 0;
	}	
}




