draw_self();

if(flashAlpha > 0) {
			draw_sprite_solid_color(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,flashColor,flashAlpha)
			flashAlpha -= flashDec;
		}


