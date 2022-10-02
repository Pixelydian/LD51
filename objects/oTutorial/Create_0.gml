global.skipTutorial = false;

text = [];
textCurrent = 0;

if room = rLevel1//rLevel1
{
	text[0] = "Soon you will learn that your success depends on every 10 seconds."
	text[1] = "But first, use SPACEBAR to use your thrusters."
	text[2] = "You can steer using W,A,S, and D"
	text[3] = "You can shoot buildings and enemies by pressing ENTER."
	text[4] = "Shoot the prison building to free the humans."
	text[5] = "Land by pressing SHIFT when close to the ground. Rescue the Humans!"
	text[6] = "Land on the shield generator so the humans can defend earth."
	text[7] = "Press ESC to pause any time and see this tutorial again."
}

if room = rLevel2
{
	text[0] = "Shoot enemy scouts trying to land.\nYou will delay the alien attack by 10 seconds."
	text[1] = "Watch that timer - sometimes enemy fighers are released at the 10 second marks."
	text[2] = "If you run out of time, the aliens will succeed at conquering earth."
	text[3] = "Rescue all the humans and arm the shields."
}


prisonersReleased = false;
RescueComplete = false;
shieldGenerator = false;


textNext = false;
textAlpha = 0;
textTimer = 120;


