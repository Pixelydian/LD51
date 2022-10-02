//HUMANS THAT CAN MAN THE STATION
humansCurrent = 0;
humansMax = 3;

//BEAM EVENT
armed = false;
armedTimer = 0;
armedTimerMax = seconds(6.3);
complete = false;


//BEAM DRAW

y1 = bbox_bottom-2;
y2 = y1;
x1 = x//x+15	//Middle of sprite
x2 = x1	//Left hand of current beam
x3 = x1	//Right side of current beam
leftX = x1-4	//Left completed beam
rightX = x1+4	//Right completed beam
whiteLight = 1;

spd = 18;

//ADD TO MISSION LOG

with oGame
{
	var _array = levels[$ other.level]
	array_insert(_array,1,other.id);
}




