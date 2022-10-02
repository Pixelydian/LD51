var _roll = random(100)

var _xBuffer = irandom_range(-sprite_xoffset,sprite_xoffset)
if _roll <= 20	instance_create_layer(x+_xBuffer,y,"Instances",oEnemyScout)

alarm[0] = seconds(10);

