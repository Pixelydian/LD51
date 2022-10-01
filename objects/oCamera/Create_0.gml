#region	CAMERA RESOLUTION (Set in oGame)
view_width = global.res_w; //multiply times 2 to zoom out in 180H res
view_height = global.res_h;
window_scale = 2;
#endregion

//Set up camera

#region SCREENSHAKE VARIABLES
shakeLen = 0;
shakeMag = 0;
shakeRemain = 0;
#endregion

// scale game window to match resolution
if HTML == 0 window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;	//Centers window


