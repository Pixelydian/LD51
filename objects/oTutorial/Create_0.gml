global.skipTutorial = false;

text = [];
textCurrent = 0;

if room = rLevel1//rLevel1
{
	text[0] = "Soon you will learn that your success depends on\nEVERY 10 SECONDS."
	text[1] = "But first, steer using W,A,S, and D."
	text[2] = "Use SPACEBAR to use your thrusters."
	text[3] = "You can shoot buildings and enemies by pressing ENTER."
	text[4] = "Shoot the RED prisons to free the humans."
	text[5] = "Land by pressing SHIFT when close to the ground.\nRescue the Humans!"
	text[6] = "Land on the BLUE shield generator\nso the humans can defend earth."
	//text[7] = "Press ESC to pause any time and see this tutorial again."
}

if room = rLevel2
{
	text[0] = "Shoot enemy scouts trying to land.\nYou will delay the alien attack by 10 SECONDS."
	text[1] = "Watch that timer!\nsometimes enemy fighers arrive at each 10 SECOND mark."
	text[2] = "If you run out of time, the aliens will return and re-conquer earth."
	text[3] = "Rescue the humans and arm the shields."
}


prisonersReleased = false;
RescueComplete = false;
shieldGenerator = false;


textNext = false;
textAlpha = 0;
textTimer = 120;
textReady = false;


depth = -10000