
//MOVEMENT
accel = 0.01;
//dpad_dir = 90;
direction = 90;
facing = direction;
maxSpeed = 1;
HP = 30;
maxHP = 30;


//ANIMATION
localFrame = 0;	//Relative frame in animation cycle
animationEnd = false;

//LAND
landDistance = 36;	//Distance from ground landing can be initiated
landPoint = noone;	//Will be assigned id of oWall/tile to land on
canLand = false;

//FLASH VARS
flashDec = 1;
flashAlpha = 0;
defaultFlashColor = c_white;
flashColor = defaultFlashColor;

//ARM SHIELD
loadCooldown = 0;	//Creates delay between undocking a human into a shield generator
loadCooldownMax = 60;

//STATE
state = playerStateFree;
isDefeated = 0;

//PLUS 10 SECONDS EVENT
tenEvent = false;
tenAlpha = 1;
float = 0;
x1 = x;
y1 = y;

//DEFEAT
c1 = 0;		//Circle/Rings
c1Alpha = 1;
c2 = 0;
c2Alpha = 1;
c3 = 0;
c3Alpha = 1;