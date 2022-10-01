repeat (prisoners)
{
	var _x = irandom_range(-8,8)
	instance_create_layer(x+_x,y,"Instances",oHuman)
}


if instance_exists(oTutorial) oTutorial.prisonersReleased = true;
instance_destroy();

