//NOTE: Make sure you have a 1 pixel black square sprite called "sPixel"

function draw_UI_bar(_valCurrent,_valMax,_xStart,_yStart,_w,_h,_c1,_c2){

//BACKGROUND





	//BORDER - sPixel subimage 0 is white
	draw_sprite_stretched(sPixel,0,_xStart-1,_yStart-1,_w+2,_h+2)

//sPixel subimage 1 is black
draw_sprite_stretched(sPixel,1,_xStart,_yStart,_w,_h)


if _valCurrent > 0
	{
		var _barPos = _valCurrent/_valMax	//Percentage of health we are along the bar
		var _barW = lerp(0,_w,_barPos)
		var _margin = 0;
		
		var _color =merge_color_rainbow(_c1,_c2,_barPos)	//More drastic change - merge_color_rainbow(_c1,_c2,round_n(_barPos,0.2))
		draw_sprite_stretched_ext(sPixel,0,_xStart+_margin,_yStart+_margin,_barW-_margin*0.5,_h-_margin,_color,1)
	}
}


	
	
