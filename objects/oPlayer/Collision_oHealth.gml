HP += 10
if HP >= maxHP HP = maxHP

if !audio_is_playing(sfx_Pickup) audio_play_sound(sfx_Pickup,400,false);

with other instance_destroy();

flash(c_aqua,30);

