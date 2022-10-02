//DEFAULT STATE OF PLAYER
function playerStateFree(){
//Movement Vars
var left = keyboard_check(ord("A")),
	right = keyboard_check(ord("D")),
	up = keyboard_check(ord("W")),
	down = keyboard_check(ord("S")),
	hMove = right - left,
	vMove = down - up,
	thrust = keyboard_check(vk_space),
	fire = keyboard_check_pressed(vk_enter),
	land = keyboard_check_pressed(vk_shift);
	
if point_distance(0,0,hMove,vMove) > 0 facing = (point_direction(0,0,hMove,vMove));


if thrust != 0 
{
	if !audio_is_playing(sfx_thruster) audio_play_sound(sfx_thruster,600,true,0.3,0,0.6);
	if sprite_index != sPlayerThrust localFrame = 0;
	sprite_index = sPlayerThrust
	motion_add(facing,accel);
}
else 
{
	if sprite_index != sPlayer localFrame = 0;
	sprite_index = sPlayer
	if audio_is_playing(sfx_thruster) audio_stop_sound(sfx_thruster)
}

if speed > maxSpeed speed = maxSpeed
		  

if fire == true
{
	instance_create_layer(x,y,"Instances",oBullet,{direction: facing});
	if !audio_is_playing(sfx_bullet) audio_stop_sound(sfx_bullet)
	audio_play_sound(sfx_bullet,500,false,choose(0.6,0.8,1),0,choose(0.8,1,1.2))
}

landPoint = instance_place(x,y+landDistance,oWall)

for (var _i = 0; _i < landDistance; _i++)
		{
			var _landPoint = instance_place(x,y+_i,oWall)
			if _landPoint != noone
			{
				landPoint = _landPoint
				_i = landDistance  //End for loop
			}
		}

if land == true and landPoint != noone
{
	show_debug_message("Player begins landing")
	state = playerStateLand;
}

if place_meeting(x,y,oWall)
{
	if !audio_is_playing(sfx_PlayerDeath) audio_play_sound(sfx_PlayerDeath,800,false)
	instance_create_layer(x,y,"Instances",oExplosion2);
	state = playerStateDefeat
	screenShake(10,120)
	
}

//ANIMATE AND ASSIGN SPRITE FRAME
playerAnimateSprite();

//show_debug_message("direction: "+string(direction))
//show_debug_message("facing: "+string(facing))
}

function playerStateLand(){
	if facing != 90	//Get to vertical position
	{
		if facing > 90 facing -= 2;
		if facing < 90 facing += 2;
		round(facing);
	}
	
	if place_meeting(x,y+1,oWall) 
	{
		show_debug_message("Player is grounded")
		facing = 90;
		landPoint = instance_place(x,y+1,oWall);
		y -= 1;
		playerAnimateSprite();
		state = playerStateGrounded
		speed = 0;	
		exit;
	}
	
	//LOWER SHIP
	if facing >= 89 and facing <= 91 
	{
		//Check there is still a landpoint underneath
		for (var _i = 0; _i < landDistance; _i++)
		{
			if place_meeting(x,y+_i,oWall) 
			{
				canLand = true;
				_i = landDistance //End for loop
			}
		}
		if canLand == false		//Player has overshot landing area - return to free state
		{
			state = playerStateFree;
			exit;
		}
		y += 0.2;
	}
	
	//SLOW DOWN FOR LANDING
	if speed > 0 speed -= accel
	if speed < 0 speed = 0.1;
	
	//ALLOW PLAYER TO EXIT LANDING STATE
	
		if keyboard_check(vk_space)
	{
		state = playerStateFree;
		landPoint = noone; //Reset
		show_debug_message("Player is taking off")
	}
	
	
	playerAnimateSprite();
	
	show_debug_message("facing: "+string(facing))

}

function playerStateGrounded(){
	
	if landPoint.object_index = oShieldGenerator
	{
		if instance_exists(oTutorial) oTutorial.shieldGenerator = true;
		//If there are humans to unload...
		if oGui.humansCurrent > 0 and landPoint.humansCurrent < landPoint.humansMax
		{
			//Load humans into shield generator
			if loadCooldown++ >= loadCooldownMax
			{
				with oGui 
				humansCurrent--
				with landPoint 
				{
					humansCurrent++
					if !audio_is_playing(sfx_loadShield) audio_play_sound(sfx_loadShield,800,false)
					if humansCurrent == humansMax
					{
						armed = true;
						if !audio_is_playing(sfx_armShield) audio_play_sound(sfx_armShield,800,false)
					}
				}
				loadCooldown = 0;	//Reset timer
			}
		}
	}
	
	if keyboard_check(vk_space)
	{
		state = playerStateFree;
		//Reset vars
		landPoint = noone;
		loadCooldown = 0;
		show_debug_message("Player is taking off")
	}	
}

function playerStateDefeat(){
	if audio_is_playing(sfx_thruster) audio_stop_sound(sfx_thruster)
	image_alpha = 0;
	isDefeated++;
	if isDefeated >= 120
	oGui.missionLost = true;
}
	
	
	
