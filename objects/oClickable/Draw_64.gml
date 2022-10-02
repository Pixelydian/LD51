if drawText > 0
{
	
	drawSetText(c_white,tFont1,fa_middle, fa_center)
	draw_set_alpha(drawText)
	draw_text(global.res_w*0.5,global.res_h*0.8,text)
	drawText = max(0,drawText-FADE_EFFECT)
	draw_set_alpha(1)
}




