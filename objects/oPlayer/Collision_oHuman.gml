if oGui.humansCurrent >= oGui.humansMax exit;

with oGui humansCurrent++

with other instance_destroy();

audio_play_sound(sfx_Pickup,800,false,1,0,(choose(0.9,1,1.1)))

if instance_exists(oTutorial) and oGui.humansCurrent >= 3 oTutorial.RescueComplete = true;



