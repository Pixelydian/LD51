
function merge_color_rainbow(_color1,_color2,_amount){

var _col1 = [color_get_hue(_color1),
			color_get_saturation(_color1),
			color_get_value(_color1)];

var _col2 = [color_get_hue(_color2),
			color_get_saturation(_color2),
			color_get_value(_color2)];
			
	//This makes blending towards white look better
	if(_col1[1] == 0)	_col1[0] = _col2[0];
	if(_col2[1] == 0)	_col2[0] = _col1[0];
	//This makes blending towards black look better.
	if(_col1[2] == 0)	_col1[1] = _col2[1];
	if(_col2[2] == 0)	_col2[1] = _col1[1];
	
	//Find shortest path to target hue
	var _dif = _col2[0] - _col1[0];
	if (abs(_dif) > 128)
	_col1[0]+=(sign(_dif)*256);
	
	//Wrap value between 0 <= 255
	var _hue = lerp(_col1[0],_col2[0],_amount);
	_hue = _hue-floor(_hue/256)*256;
	
	return make_color_hsv(round(_hue),
					lerp(_col1[1],_col2[1],_amount),
					lerp(_col1[2],_col2[2],_amount));
	
}

