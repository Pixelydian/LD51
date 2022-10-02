
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
	if room != rLevel1 //and room != rLevel2
	{
		with oScoutSpawner alarm[1] = 1;
	}
}

if missionComplete == true or missionLost == true
{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) 
	{
		alarm[0] = 60;
		alarm[1] = 90;
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