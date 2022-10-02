if isDefeated >= 1
{
	draw_set_alpha(c1Alpha)
	draw_circle_color(x,y,c1,c_white,c_yellow,true)
	c1++
	c1Alpha = max(0,c1Alpha-0.02)
	if c1Alpha < 0.5
	{
		draw_set_alpha(c2Alpha)
		draw_circle(x,y,c2,false)
		c2++
		c2Alpha = max(0,c2Alpha-0.02)
		if c2Alpha < 0.5
		{
			draw_set_alpha(c1Alpha)
			draw_circle_color(x,y,c3,c_white,c_yellow,true)
			c3++
			c3Alpha = max(0,c3Alpha-0.01)
		}
	}
	draw_set_alpha(1)
}
else	//Not defeated
{
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
}


