//Fundamental Scripts:

function approach(_a,_b,_amount){

// Moves "a" towards "b" by "amount" and returns the result

// Nice because it will not overshoot "b", and works in both directions

// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);
 
if (_a < _b)
{
    _a += _amount;
    if (_a > _b)
        return _b;
}
else
{
    _a -= _amount;
    if (_a < _b)
        return _b;
}
return _a;

} //END SCRIPT

function wave(_from, _to, _duration, _offset) {
 
// Returns a value that will wave back and forth between [from-to] over [duration] seconds

// Examples
//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
 
var _a4 = (_to - _from) * 0.5;
return _from + _a4 + sin((((current_time * 0.001) + _duration * _offset) / _duration) * (pi*2)) * _a4;

} //END SCRIPT

function wrap(_value,_min,_max) {

// Returns the value wrapped, values over or under will be wrapped around

//Useful for wrapping object position on either side of screen, or wrapping an angle so it won't go above 360.
 
	if (_value mod 1 == 0)
	{
	    while (_value > _max || _value < _min)
	    {
	        if (_value > _max)
	            _value += _min - _max - 1;
	        else if (_value < _min)
	            _value += _max - _min + 1;
	    }
	    return(_value);
	}
	else
	{
	    var vOld = _value + 1;
	    while (_value != vOld)
	    {
	        vOld = _value;
	        if (_value < _min)
	            _value = _max - (_min - _value);
	        else if (_value > _max)
	            _value = _min + (_value - _max);
	    }
	    return(_value);
	}

}	//END SCRIPT

function jumpInDirection(_distance, _direction) {
 
// Teleports parent object to a spot based on given direction and distance
 
x += lengthdir_x(_distance,_direction)
y += lengthdir_y(_distance,_direction)

}	//END SCRIPT

function chance(_percent) {

// Returns true or false depending on RNG
// ex: 
//      Chance(0.7);    -> Returns true 70% of the time
 
return _percent > random(1);

}	//END SCRIPT


function screenShake(magnitude,frames){
	
//Works to make the object oCamera shake back and forth.
//macro global.iCamera must be set in oGame
	
#region EXPLAINATION
/*
	magnitude is how big the shake starts
	frames is the amount of frames/duration of the shake
	shakeRemain will deduct over time in the oCamera code.
	
	if magnitude is greater than shakeRemain (with magnitude being set to start the shake, and shakeRemain intially zero when no shake is present.)
	
	shakeMag in the oCamera code = magnitude set in the script. We need to set this so we can determine
	_shakeReduction in the oCamera code, or the percentage that ShakeRemain must lower each frame in order to get to zero over a set frame amount.
	(var _shakeReduction = (shakeMag/shakeLen))
	
	shakeRemain = shakeMag, setting shakeRemain at the maximum shake before it counts down in oCamera code.
	
	shakeLen = frames, the amount of frames/duration of the shake.
*/
#endregion

	with (global.iCamera) //or oCamera, but the global gets the actual instance ID, which is faster for gamemaker.
	{
		if (magnitude > shakeRemain)
		{
			shakeMag = magnitude;
			shakeRemain = shakeMag;
			shakeLen = frames;
		}
	}
}	//END SCRIPT

function drawSetText(_color,_font,_halign,_valign){
	

	// Allows one line setup of major text drawing vars.
	// Requiring all four prevents silly coders from forgetting one
	// And therefore creating a dumb dependency on other event calls.
	// (Then wondering why their text changes later in development.)

	draw_set_color(_color);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);


}	//END SCRIPT

function arrayShuffle(_array)
{
	array_sort(_array,function(a,b)
	{
		return choose (-1,0,1)	
	})
}

function seconds(_numberOfSecs)
{
	return _numberOfSecs * room_speed	
}

///@func round_to(value,incriment)
function round_to(_value,_incriment){
	
	/* Rounds the value to the incriment Example:
	
	round_to(12.72,0.5) will equal 12.5
	round_to(12.72,5) will equal 15
	round_to(12.72,0.2) will equal 12.8
	round_to(12.72,0.1) will equal 12.7
	round_to(12.725,0.01) will equal 12.72
	
	*/
	
	return round(_value/_incriment)*_incriment	
}

///@func hex_to_color(hex color as string)
function hex_to_color(_hexString) {
	//Converts a hex code into a useable string by GMS.
	//Assign to a _color var and use where color is required.
	_hexString = string_lower(_hexString);
	var _dec = 0;
 
  var _dig = "0123456789abcdef";
  var _len = string_length(_hexString);
  for (var _pos = 1; _pos <= _len; _pos++) {
      _dec = _dec << 4 | (string_pos(string_char_at(_hexString, _pos), _dig) - 1);
  }
 
  var _col = (_dec & 16711680) >> 16 | (_dec & 65280) | (_dec & 255) << 16;
  return _col;
}

///@func flash(color,length)
function flash(_color = defaultFlashColor, _length = 10){
	flashColor = _color;
	flashAlpha = 1;
	flashDec = 1/_length;
}


