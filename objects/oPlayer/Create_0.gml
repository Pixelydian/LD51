
//MOVEMENT
accel = 0.01;
//dpad_dir = 90;
direction = 90;
facing = direction;
maxSpeed = 1;


//ANIMATION
localFrame = 0;	//Relative frame in animation cycle
animationEnd = false;

//LAND
landDistance = 36;	//Distance from ground landing can be initiated
landPoint = noone;	//Will be assigned id of oWall/tile to land on
canLand = false;

//ARM SHIELD
loadCooldown = 0;	//Creates delay between undocking a human into a shield generator
loadCooldownMax = 60;

//STATE
state = playerStateFree;

//PLUS 10 SECONDS EVENT
tenEvent = false;
tenAlpha = 1;
float = 0;
x1 = x;
y1 = y;