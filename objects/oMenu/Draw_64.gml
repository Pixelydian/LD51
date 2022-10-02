drawSetText(c_white,tFont3,fa_center,fa_middle)
draw_set_alpha(titleVisible * abs(sin(get_timer() * 0.000002 + pi)))
draw_text(global.res_w*0.5,global.res_h*0.8,"Press SPACE to start")
draw_set_alpha(1);

