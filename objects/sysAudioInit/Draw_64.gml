drawSetText(c_white,tFont4,fa_center,fa_middle)

draw_text(global.res_w*0.5,global.res_h*0.2,"Click the Kitty to Load the Audio")


if screenAlpha > 0
	{
		draw_sprite_stretched_ext(sPixel,1,0,0,global.res_w,global.res_h,c_white,screenAlpha)
	}
	
	
if drawText > 0
{
	drawSetText(c_white,tFont4,fa_middle, fa_center)
	draw_set_alpha(drawText)
	draw_text(global.res_w*0.5,global.res_h*0.8,"Please click the cat on the loveseat")
	drawText = max(0,drawText-FADE_EFFECT)
	draw_set_alpha(1)
}






