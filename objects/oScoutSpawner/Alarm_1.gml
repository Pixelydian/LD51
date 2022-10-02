var _roll = random(100)

var _xBuffer = irandom_range(-32,32)
if _roll <= 20	instance_create_layer(x+_xBuffer,y,"Instances",oEnemyFighter)

alarm[0] = seconds(5);

