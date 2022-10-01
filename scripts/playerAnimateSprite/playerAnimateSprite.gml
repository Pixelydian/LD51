function playerAnimateSprite(_directions = 8,_angle = 45){
	
	
#region SET SPRITE DIRECTION VARIABLES
/*
//******Remember to customize _angleTolerance and _totalDirections if you want your player animation to be 4 directions or 8 directions******

//******Note for creating sprite - GM cardinal directions are 0 = right, 90 = up, 180 = left, 270 = down.
//4 (or 8) direction animations can be in one sprite but must be in this order.******

///SET SPRITE DIRECTION VARIABLES

//_angleTolerance is the number of angle segments for determining the animation frame. 
//Divide direction by 4 (90 degree segments), use 90. To convert to 8 directions, use 45.

//NOTE: Could replace _cardinalDirection with MACRO CARDINAL_DIR (round(direction/90). I am leaving it for clarity.
*/
#endregion
var _angleTolerance = _angle

//Convert our degrees (0-360) into a number (0-3) ((not 1-4 since animation frames start on 0)
var _cardinalDirection = round(facing/_angleTolerance)//round(direction/_angleTolerance);

//Number of all directions depicted in the animation.
var _totalDirections = _directions
//Number of all frames in a directional segment of an animation to cycle (example: All "left run" frames)
var _totalFrames = sprite_get_number(sprite_index)/_totalDirections;

//UPDATE THE SPRITE

 #region Updating the sprite by localFrame EXPLAINATION
/*
***localFrame set in oplayer.image_index***
localFrame is the current frame within a directional animation cycle
Determine what frame we should set that cooresponds with the cardinal direction.
Example: If localFrame (current frame) is 2, direction is 0 (facing right) and _totalFrames is 6, image_index = 2
Example 2: If localFrame is 4, direction is 180 (_cardinalDirection calculated as 2, facing left) and _totalFrames is 6, image_index = 16 
*/
#endregion
image_index = localFrame + (_cardinalDirection * _totalFrames)
//Incrediment the frames by localFrame (not by image_speed)


//localFrame += sprite_get_speed(sprite_index) / FRAME_RATE		//Creates issues with flickering due to rounding errors
localFrame += round_to(sprite_get_speed(sprite_index) / FRAME_RATE,.0001)

//If animation should loop on next game step when it has reached _totalFrames.
//Example: if localFrame(6) >= _totalFrames(6), localFrame = is 0
//if localFrame = _totalFrames localFrame = 0
if (localFrame >= _totalFrames)
{
	//animationEnd = true for animations that need to repeat. False for one time animation cycles.
	animationEnd = true;
	//local frame = localframe - _totalFrames
	localFrame = abs(localFrame - _totalFrames)	//Bug fix option if image_index is triggering as -0.
	//localFrame -= _totalFrames
	//if localFrame <= 0 localFrame = 0;

} else animationEnd = false;
}