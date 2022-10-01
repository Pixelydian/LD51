
if missionComplete == false
{
	global.masterTimer--;
	global.miniTimer--;
}



if global.miniTimer <= 0
{
	show_debug_message("Time countdown")
	timerScale = 2;
	boxSections++;
	global.miniTimer = seconds(10);
	tenEvent = true;
}



//DEBUG
if keyboard_check_pressed(ord("P"))
{
	boxSections++;
	global.masterTimer -= seconds(10);
	tenEvent = true;
}


timerScale = max(1,timerScale-0.04)