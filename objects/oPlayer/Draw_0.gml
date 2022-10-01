draw_self();




if tenEvent = true
{
	tenAlpha = max(0,tenAlpha-0.01);
	float++
	draw_set_alpha(tenAlpha);
	drawSetText(c_white,tFont3,fa_center,fa_middle)
	draw_text(x1-1,y1-float-1,"+10")
	drawSetText(c_green,tFont3,fa_center,fa_middle)
	draw_text(x1,y1-float,"+10")
	draw_set_alpha(1);
	if tenAlpha <= 0 
	{
		tenEvent = false;
		tenAlpha = 1;
		float = 0;
	}	
}



