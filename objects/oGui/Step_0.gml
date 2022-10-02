
if missionComplete == false and missionLost == false
{
	global.masterTimer--;
	global.miniTimer--;
}



if global.miniTimer <= 0
{
	timerScale = 2;
	boxSections++;
	global.miniTimer = seconds(10);
	tenEvent = true;
	var roll = random(100)
	if room != rLevel1
	{
		if roll < 50 instance_create_layer(350,60,"Instances",oEnemyFighter)
	}
}

if missionComplete == true or missionLost == true
{
	var _nextStage = global.levels[global.currentLevel]
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) 
	{
		with oGame clearMissions();
		room_goto(_nextStage);
	}
}



//DEBUG
/*
if keyboard_check_pressed(ord("P"))
{
	boxSections++;
	global.masterTimer -= seconds(10);
	tenEvent = true;
}
*/


timerScale = max(1,timerScale-0.04)